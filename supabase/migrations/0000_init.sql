-- Migracion inicial placeholder.
-- A medida que agregues tablas por feature, crea archivos:
--   supabase/migrations/<timestamp>_<nombre>.sql
-- usando:  supabase migration new <nombre>

create schema if not exists public;

-- Ejemplo de tabla estandar (descomenta y adapta):
-- create table public.example (
--   id uuid primary key default gen_random_uuid(),
--   created_at timestamptz not null default now(),
--   updated_at timestamptz not null default now()
-- );