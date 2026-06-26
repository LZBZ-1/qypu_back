"""Cliente(s) de Supabase: anon (usuario) y service_role (admin)."""

from __future__ import annotations

from typing import TYPE_CHECKING

from supabase import create_client

from app.core.config import get_settings

if TYPE_CHECKING:
    from supabase import Client

settings = get_settings()

# Cliente con service_role: bypassa RLS, usar solo en backend seguro.
supabase_admin: Client = create_client(
    settings.supabase_url,
    settings.supabase_service_role_key,
)

# Cliente anon: respeta RLS, usar para peticiones en nombre del usuario.
supabase_client: Client = create_client(
    settings.supabase_url,
    settings.supabase_anon_key,
)


def get_supabase_admin() -> Client:
    """Dependency FastAPI: cliente service_role."""
    return supabase_admin


def get_supabase_client() -> Client:
    """Dependency FastAPI: cliente anon."""
    return supabase_client
