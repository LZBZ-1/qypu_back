# qypu

API backend con **arquitectura por feature** usando **FastAPI**, **Python 3.12**, **uv** y **Supabase** (Auth, Database, Storage, Realtime).

## Requisitos

- [Python 3.12+](https://www.python.org/downloads/)
- [uv](https://docs.astral.sh/uv/) - gestor de dependencias
- [Supabase CLI](https://supabase.com/docs/guides/cli) - para backend local

Instalar uv:

```bash
# macOS / Linux
curl -LsSf https://astral.sh/uv/install.sh | sh
# Windows (PowerShell)
irm https://astral.sh/uv/install.ps1 | iex
```

## Setup inicial

```bash
# 1. Crear entorno virtual e instalar dependencias
uv sync

# 2. Copiar variables de entorno
cp .env.example .env
# Editar .env con las credenciales reales de Supabase y el puerto local

# 3. Iniciar backend de Supabase local (opcional)
supabase start

# 4. Levantar la API
uv run qypu-dev
```

Con el `.env.example`, la API queda disponible en <http://localhost:8765>, docs en <http://localhost:8765/docs>.

## Estructura del proyecto

```
qypu/
├── .github/workflows/        # CI (lint+tests) y CD (supabase db push)
├── .venv/                    # entorno virtual (no commitear)
├── src/app/
│   ├── main.py               # FastAPI app factory + routers
│   ├── core/
│   │   ├── config.py         # Settings (pydantic-settings)
│   │   ├── supabase.py       # clientes Supabase (anon + service_role)
│   │   └── exceptions.py     # excepciones de dominio
│   ├── features/             # una carpeta por feature
│   │   └── <feature>/
│   │       ├── router.py     # APIRouter
│   │       ├── service.py    # lógica de negocio
│   │       ├── repository.py # acceso a Supabase DB
│   │       ├── schemas.py    # modelos pydantic
│   │       └── models.py     # entidades de dominio
│   └── shared/
│       └── dependencies.py   # Depends() reutilizables (auth, db)
├── supabase/
│   ├── config.toml           # config del CLI de Supabase
│   ├── migrations/           # migraciones SQL
│   └── seed.sql              # datos semilla
├── tests/                    # pytest
├── pyproject.toml            # deps + config de ruff/mypy/pytest
├── nixpacks.toml             # config de build para Railway (Nixpacks)
├── .env.example              # plantilla de variables
└── .github/workflows/        # CI/CD con GitHub Actions
```

## Agregar una feature nueva

1. Crear la carpeta `src/app/features/<nombre>/` con `__init__.py`.
2. Implementar `router.py`, `service.py`, `repository.py`, `schemas.py`, `models.py`.
3. Registrar el router en `src/app/main.py`:

```python
from app.features.<nombre>.router import router as <nombre>_router

app.include_router(<nombre>_router, prefix="/api/v1/<nombre>", tags=["<nombre>"])
```

### Plantilla de router

```python
# src/app/features/<nombre>/router.py
from fastapi import APIRouter

router = APIRouter()

@router.get("/")
async def list_items():
    return {"items": []}
```

## Comandos útiles

```bash
uv sync                    # instalar dependencias
uv add <paquete>           # agregar dependencia
uv add --dev <paquete>     # agregar dependencia de desarrollo
uv run ruff check src     # lint
uv run ruff format src    # formatear
uv run mypy src/app        # typecheck
uv run pytest             # tests
uv run qypu-dev             # servidor dev, lee PORT desde .env
```

### Supabase local

```bash
supabase start             # iniciar backend local
supabase db reset          # reset + migraciones + seed
supabase migration new <nombre>  # crear migracion
supabase db push           # aplicar migraciones a remoto
supabase stop              # detener backend local
```

## CI/CD (GitHub Actions)

- **CI** (`.github/workflows/ci.yml`): en push/PR a `main` ejecuta Ruff, Mypy y Pytest con `uv`.
- **CD** (`.github/workflows/cd.yml`): en merge a `main` aplica migraciones a Supabase (`supabase db push`) y luego despliega la app a Railway (`railway up`).

### Secretes necesarios en GitHub

| Secreto                  | Descripción                                      |
| ------------------------ | ------------------------------------------------ |
| `SUPABASE_ACCESS_TOKEN`  | Token de acceso personal de Supabase             |
| `SUPABASE_DB_URL`        | URL de conexión a la base de datos remota        |
| `RAILWAY_TOKEN`          | Token de la CLI de Railway (`railway login`)     |
| `RAILWAY_SERVICE_ID`     | ID del servicio de Railway donde desplegar        |

### Configurar Railway

1. Instalar la CLI: `npm install -g @railway/cli`
2. Autenticarse: `railway login`
3. Crear el proyecto/servicio desde el dashboard o con `railway init`.
4. Obtener `RAILWAY_TOKEN` (Settings > API Tokens) y `RAILWAY_SERVICE_ID` (Settings > service).
5. Agregarlos como secrets en GitHub.
6. Configurar las variables de entorno en el servicio de Railway (las mismas de `.env.example`, con `PORT` automático de Railway).

## Variables de entorno

Ver `.env.example`. Principales:

| Variable                     | Descripción                              |
| ---------------------------- | ---------------------------------------- |
| `SUPABASE_URL`              | URL del proyecto Supabase                |
| `SUPABASE_ANON_KEY`         | Clave anon (respeta RLS)                 |
| `SUPABASE_SERVICE_ROLE_KEY` | Clave service_role (bypassa RLS)         |
| `SUPABASE_JWT_SECRET`       | Secreto JWT para verificar tokens       |
| `PORT`                     | Puerto local de la API                   |
| `APP_ENV`                   | `development` / `production`             |

### Telegram con ngrok

1. Levantar la API local, abrir ngrok y registrar el webhook:

```bash
uv run qypu-dev --ngrok
```

Al crear un canal `telegram`, la API devuelve `linking_url` con el formato
`https://t.me/{TELEGRAM_BOT_USERNAME}?start={linking_code}`. Al abrir ese link,
el bot recibe `/start`, vincula el canal y responde en el chat.
