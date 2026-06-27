from dataclasses import dataclass
from uuid import UUID

from supabase import Client

from app.core.exceptions import AuthenticationError


@dataclass(frozen=True)
class AuthenticatedUser:
    id: UUID
    email: str | None = None


def get_authenticated_user(supabase: Client, access_token: str) -> AuthenticatedUser:
    try:
        response = supabase.auth.get_user(access_token)
    except Exception as exc:
        raise AuthenticationError() from exc

    if response is None:
        raise AuthenticationError()

    user = response.user
    if user is None:
        raise AuthenticationError()

    return AuthenticatedUser(
        id=UUID(str(user.id)),
        email=user.email,
    )
