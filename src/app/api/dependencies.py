from typing import Annotated

from fastapi import Depends
from fastapi.security import HTTPAuthorizationCredentials, HTTPBearer
from supabase import Client

from app.core.exceptions import AuthenticationError
from app.core.security import AuthenticatedUser, get_authenticated_user
from app.core.supabase import get_supabase_service_client

bearer_scheme = HTTPBearer(auto_error=False)


def get_current_user(
    credentials: Annotated[HTTPAuthorizationCredentials | None, Depends(bearer_scheme)],
    supabase: Annotated[Client, Depends(get_supabase_service_client)],
) -> AuthenticatedUser:
    if credentials is None:
        raise AuthenticationError()

    return get_authenticated_user(supabase, credentials.credentials)
