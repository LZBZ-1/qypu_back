# Carpeta de features.
#
# Cada feature sigue este patron:
#
#   features/<nombre>/
#     __init__.py
#     router.py        # APIRouter de FastAPI (/api/v1/<nombre>)
#     service.py       # logica de negocio
#     repository.py    # acceso a Supabase (DB / auth / storage)
#     schemas.py        # modelos pydantic (request / response)
#     models.py         # entidades de dominio (dataclasses / pydantic)
#
# Registrar el router en src/app/main.py (import + include_router).