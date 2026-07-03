import argparse
import os
import queue
import re
import subprocess
import threading
import time
from dataclasses import dataclass
from typing import Any

import httpx
import uvicorn

from app.core.config import get_settings


@dataclass(frozen=True)
class NgrokTunnel:
    process: subprocess.Popen[Any]
    public_url: str


def start_ngrok(port: int, authtoken: str) -> NgrokTunnel:
    stop_existing_ngrok_processes()
    process = subprocess.Popen(
        [
            "ngrok",
            "http",
            f"127.0.0.1:{port}",
            "--authtoken",
            authtoken,
            "--log",
            "stdout",
            "--log-format",
            "logfmt",
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
    )

    try:
        public_url = wait_for_ngrok_public_url(process)
    except Exception:
        process.terminate()
        raise

    return NgrokTunnel(process=process, public_url=public_url)


def stop_existing_ngrok_processes() -> None:
    try:
        response = httpx.get("http://127.0.0.1:4040/api/tunnels", timeout=1.0)
        response.raise_for_status()
        for tunnel in response.json().get("tunnels", []):
            tunnel_name = tunnel.get("name")
            if tunnel_name:
                httpx.delete(f"http://127.0.0.1:4040/api/tunnels/{tunnel_name}", timeout=1.0)
    except (httpx.HTTPError, KeyError, TypeError):
        pass

    if os.name == "nt":
        subprocess.run(
            ["taskkill", "/F", "/IM", "ngrok.exe"],
            check=False,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )
    else:
        subprocess.run(
            ["pkill", "-f", "ngrok http"],
            check=False,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )
    time.sleep(0.5)


def enqueue_process_output(
    stream: Any,
    output_queue: queue.Queue[str],
) -> None:
    for line in iter(stream.readline, ""):
        output_queue.put(str(line))


def wait_for_ngrok_public_url(
    process: subprocess.Popen[Any],
    timeout_seconds: float = 15.0,
) -> str:
    deadline = time.monotonic() + timeout_seconds
    lines: list[str] = []
    output_queue: queue.Queue[str] = queue.Queue()

    if process.stdout is None:
        raise RuntimeError("ngrok stdout is not available")

    threading.Thread(
        target=enqueue_process_output,
        args=(process.stdout, output_queue),
        daemon=True,
    ).start()

    while time.monotonic() < deadline:
        if process.poll() is not None:
            output = "".join(lines).strip()
            if "ERR_NGROK_334" in output:
                raise RuntimeError(
                    "ngrok endpoint is already online. Stop the existing endpoint from the "
                    "ngrok dashboard or wait a few seconds and run qypu-dev --ngrok again."
                )

            raise RuntimeError(f"ngrok exited early: {output}")

        try:
            line = output_queue.get(timeout=0.5)
        except queue.Empty:
            continue

        lines.append(line)
        match = re.search(r"url=(https://\S+)", line)
        if match:
            return match.group(1)

    raise RuntimeError(f"ngrok did not expose an HTTPS tunnel: {''.join(lines).strip()}")


def register_telegram_webhook(public_url: str) -> None:
    settings = get_settings()
    if not settings.telegram_bot_token:
        print("TELEGRAM_BOT_TOKEN is not configured; skipping Telegram webhook registration.")
        return

    webhook_url = f"{public_url}/api/v1/telegram/webhook"
    payload = {"url": webhook_url}
    if settings.telegram_webhook_secret_token:
        payload["secret_token"] = settings.telegram_webhook_secret_token

    response = httpx.post(
        f"https://api.telegram.org/bot{settings.telegram_bot_token}/setWebhook",
        data=payload,
        timeout=10.0,
    )
    response.raise_for_status()
    data = response.json()
    if not data.get("ok"):
        raise RuntimeError(f"Telegram rejected webhook registration: {data}")

    print(f"Telegram webhook registered: {webhook_url}")


def register_telegram_webhook_when_ready(public_url: str, port: int) -> None:
    deadline = time.monotonic() + 30.0
    local_url = f"http://127.0.0.1:{port}/openapi.json"

    while time.monotonic() < deadline:
        try:
            response = httpx.get(local_url, timeout=1.0)
            if response.status_code == 200:
                register_telegram_webhook(public_url)
                return
        except httpx.HTTPError:
            pass

        time.sleep(0.5)

    print("FastAPI did not become ready; Telegram webhook was not registered.")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--ngrok",
        action="store_true",
        help="Start an ngrok tunnel and register the Telegram webhook.",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    settings = get_settings()
    tunnel: NgrokTunnel | None = None

    if args.ngrok:
        if not settings.ngrok_authtoken:
            raise RuntimeError("NGROK_AUTHTOKEN is not configured in .env")

        tunnel = start_ngrok(settings.port, settings.ngrok_authtoken)
        print(f"ngrok tunnel started: {tunnel.public_url}")
        threading.Thread(
            target=register_telegram_webhook_when_ready,
            args=(tunnel.public_url, settings.port),
            daemon=True,
        ).start()

    try:
        uvicorn.run(
            "app.main:app",
            host="127.0.0.1",
            port=settings.port,
            reload=True,
        )
    finally:
        if tunnel is not None:
            tunnel.process.terminate()
 