from aiogram import Bot, Dispatcher
from aiogram.filters import CommandObject, CommandStart
from aiogram.types import Message

from app.modules.channels.exceptions import (
    ChannelAlreadyLinkedError,
    ChannelInvalidLinkingCodeError,
)
from app.modules.telegram.media import (
    GroqMediaClient,
    GroqMediaProcessingError,
    download_telegram_file,
)
from app.modules.telegram.service import connect_telegram_channel, handle_telegram_text_message


def register_handlers(dispatcher: Dispatcher) -> None:
    @dispatcher.message(CommandStart())
    async def handle_start_with_linking_code(message: Message, command: CommandObject) -> None:
        linking_code = command.args
        if not linking_code:
            await message.answer("Abre el enlace de vinculacion generado desde Qypu.")
            return

        if message.chat.id is None or message.from_user is None:
            await message.answer("No pude identificar esta cuenta de Telegram.")
            return

        try:
            channel = await connect_telegram_channel(
                linking_code=linking_code,
                chat_id=message.chat.id,
                user_id=message.from_user.id,
                username=message.from_user.username,
                first_name=message.from_user.first_name,
                last_name=message.from_user.last_name,
            )
        except ChannelInvalidLinkingCodeError:
            await message.answer("Este enlace de vinculacion no existe o ya no es valido.")
            return
        except ChannelAlreadyLinkedError:
            await message.answer("Este canal ya fue vinculado con otra cuenta de Telegram.")
            return

        await message.answer(
            f"Listo. Tu cuenta de Telegram quedo vinculada al canal {channel.name}.\n\n"
            "Escoge que quieres hacer:\n"
            "- Vendedor: registrar o consultar ventas.\n"
            "- Almacenero: registrar productos, mover stock y consultar inventario.\n\n"
            "Tambien puedes escribirme directamente lo que necesitas y llamare al agente correcto."
        )

    @dispatcher.message()
    async def handle_regular_message(message: Message) -> None:
        if message.chat.id is None:
            await message.answer("No pude identificar este chat.")
            return
        bot = _require_bot(message)

        if message.text is not None:
            response = await handle_telegram_text_message(
                chat_id=message.chat.id,
                text=message.text,
            )
            await message.answer(response)
            return

        media_client = GroqMediaClient()

        if message.voice is not None or message.audio is not None:
            audio = message.voice or message.audio
            if audio is None:
                await message.answer("No pude leer el audio enviado.")
                return

            filename = getattr(audio, "file_name", None) or "telegram-audio.ogg"
            content_type = audio.mime_type or "audio/ogg"
            try:
                audio_bytes = await download_telegram_file(bot, audio.file_id)
                transcript = await media_client.transcribe_audio(
                    audio_bytes,
                    filename,
                    content_type,
                )
            except GroqMediaProcessingError as exc:
                await message.answer(str(exc))
                return

            response = await handle_telegram_text_message(
                chat_id=message.chat.id,
                text=transcript,
            )
            await message.answer(f"Entendi esto del audio:\n{transcript}\n\n{response}")
            return

        if message.photo or _is_image_document(message):
            try:
                image_bytes, content_type = await _download_image_bytes(message, bot)
                description = await media_client.describe_image(image_bytes, content_type)
            except GroqMediaProcessingError as exc:
                await message.answer(str(exc))
                return

            await message.answer(f"Descripcion de la imagen:\n{description}")
            return

        await message.answer("Por ahora puedo procesar texto, notas de voz, audio e imagenes.")


async def _download_image_bytes(message: Message, bot: Bot) -> tuple[bytes, str]:
    if message.photo:
        photo = message.photo[-1]
        image_bytes = await download_telegram_file(bot, photo.file_id)
        return image_bytes, "image/jpeg"

    if (
        message.document
        and message.document.mime_type
        and message.document.mime_type.startswith("image/")
    ):
        image_bytes = await download_telegram_file(bot, message.document.file_id)
        return image_bytes, message.document.mime_type

    raise GroqMediaProcessingError("No encontre una imagen compatible en el mensaje.")


def _is_image_document(message: Message) -> bool:
    return bool(
        message.document
        and message.document.mime_type
        and message.document.mime_type.startswith("image/")
    )


def _require_bot(message: Message) -> Bot:
    if message.bot is None:
        raise GroqMediaProcessingError("No pude acceder al bot de Telegram.")
    return message.bot
