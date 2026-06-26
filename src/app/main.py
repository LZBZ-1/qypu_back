"""Punto de entrada de la API FastAPI.

Arquitectura por feature: cada feature expone un APIRouter y se monta aqui
bajo el prefijo /api/v1. Para agregar una feature nueva:

    from app.features.<nombre>.router import router as <nombre>_router
    app.include_router(<nombre>_router, prefix="/api/v1/<nombre>", tags=["<nombre>"])
"""

from __future__ import annotations

from fastapi import FastAPI

from app.core.config import get_settings

settings = get_settings()


def create_app() -> FastAPI:
    """Factory de la aplicacion FastAPI."""
    app = FastAPI(
        title=settings.app_name,
        description="API backend con arquitectura por feature - FastAPI + Supabase",
        version="0.1.0",
        docs_url="/docs",
        redoc_url="/redoc",
        openapi_url="/openapi.json",
    )

    # --- Health checks -----------------------------------------------------
    @app.get("/health", tags=["health"])
    async def health() -> dict[str, str]:
        return {"status": "ok", "env": settings.app_env}

    @app.get("/health/supabase", tags=["health"])
    async def health_supabase() -> dict[str, str]:
        return {"status": "ok", "supabase_url": settings.supabase_url}

    # --- Routers de features ----------------------------------------------
    # IMPORTACION CONDICIONAL:
    #   Cuando crees tu primera feature, importala aqui e incluye el router.
    #
    # from app.features.users.router import router as users_router
    # app.include_router(users_router, prefix="/api/v1/users", tags=["users"])
    #
    # from app.features.auth.router import router as auth_router
    # app.include_router(auth_router, prefix="/api/v1/auth", tags=["auth"])

    return app


app = create_app()


if __name__ == "__main__":
    import uvicorn

    uvicorn.run(
        "app.main:app",
        host=settings.app_host,
        port=settings.app_port,
        reload=settings.app_debug,
    )
