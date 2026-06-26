"""Dependencias compartidas (FastAPI Depends)."""

from __future__ import annotations

from typing import TYPE_CHECKING, Annotated, Any

from fastapi import Depends, Header, HTTPException, status

from app.core.supabase import get_supabase_admin, get_supabase_client

if TYPE_CHECKING:
    from supabase import Client


def get_admin_client() -> Client:
    """Cliente Supabase con service_role (bypassa RLS)."""
    return get_supabase_admin()


def get_anon_client() -> Client:
    """Cliente Supabase anon (respeta RLS)."""
    return get_supabase_client()


AdminClient = Annotated[Client, Depends(get_admin_client)]
AnonClient = Annotated[Client, Depends(get_anon_client)]
AuthorizationHeader = Annotated[str | None, Header(default=None)]


async def get_current_user(
    authorization: AuthorizationHeader,
    admin: AdminClient,
) -> dict[str, Any]:
    """Valida el JWT de Supabase Auth y devuelve el usuario actual.

    Uso:
        @router.get("/me")
        async def me(user: dict = Depends(get_current_user)):
            return user
    """
    if not authorization or not authorization.startswith("Bearer "):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Falta el header Authorization: Bearer <token>",
        )
    token = authorization.removeprefix("Bearer ").strip()
    try:
        resp = admin.auth.get_user(token)
    except Exception as exc:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail=f"Token invalido: {exc}",
        ) from exc
    if resp is None or resp.user is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Usuario no encontrado",
        )
    return resp.user.model_dump()


CurrentUser = Annotated[dict[str, Any], Depends(get_current_user)]
