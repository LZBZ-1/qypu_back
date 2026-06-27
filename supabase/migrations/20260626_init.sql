CREATE TABLE public.document_types (
  id UUID NOT NULL DEFAULT gen_random_uuid(),
  code TEXT NOT NULL,
  label TEXT NOT NULL,
  validation_regex TEXT NOT NULL,
  example TEXT NOT NULL,
  CONSTRAINT document_types_pkey PRIMARY KEY (id)
) TABLESPACE pg_default;

CREATE TABLE public.states (
  id UUID PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE public.cities (
  id UUID PRIMARY KEY,
  state_id UUID NOT NULL,
  name VARCHAR(100) NOT NULL,
  FOREIGN KEY (state_id) REFERENCES public.states(id)
);

CREATE TABLE public.districts (
  id UUID PRIMARY KEY,
  city_id UUID NOT NULL,
  name VARCHAR(100) NOT NULL,
  FOREIGN KEY (city_id) REFERENCES public.cities(id)
);

CREATE TABLE public.organizations (
  id UUID PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  address VARCHAR(200) NOT NULL
);

CREATE TABLE public.branches (
  id UUID PRIMARY KEY,
  organization_id UUID NOT NULL,
  state_id UUID NOT NULL,
  city_id UUID NOT NULL,
  district_id UUID NOT NULL,
  name VARCHAR(100) NOT NULL,
  FOREIGN KEY (organization_id) REFERENCES public.organizations(id),
  FOREIGN KEY (state_id) REFERENCES public.states(id),
  FOREIGN KEY (city_id) REFERENCES public.cities(id),
  FOREIGN KEY (district_id) REFERENCES public.districts(id)
);

CREATE TABLE public.channels (
  id UUID PRIMARY KEY,
  organization_id UUID NOT NULL,
  name VARCHAR(100) NOT NULL,
  channel_type VARCHAR(20) NOT NULL CHECK (channel_type IN ('whatsapp', 'telegram')),
  status VARCHAR(20) NOT NULL CHECK (status IN ('pending', 'connected', 'disconnected', 'error')),
  linking_code VARCHAR(100) NOT NULL UNIQUE,
  telegram_chat_id BIGINT,
  telegram_user_id BIGINT,
  telegram_username TEXT,
  telegram_first_name TEXT,
  telegram_last_name TEXT,
  connected_at TIMESTAMPTZ,
  FOREIGN KEY (organization_id) REFERENCES public.organizations(id)
);

CREATE UNIQUE INDEX channels_telegram_chat_id_unique
ON public.channels (telegram_chat_id)
WHERE telegram_chat_id IS NOT NULL;

CREATE TABLE public.telegram_pending_actions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  channel_id UUID NOT NULL,
  action_type TEXT NOT NULL,
  payload JSONB NOT NULL,
  expires_at TIMESTAMPTZ NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  FOREIGN KEY (channel_id) REFERENCES public.channels(id)
);

CREATE INDEX telegram_pending_actions_channel_expires_idx
ON public.telegram_pending_actions (channel_id, expires_at);

CREATE TABLE public.users (
  id UUID PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL,
  phone VARCHAR(20) NOT NULL
);

CREATE TABLE public.categories (
  id UUID PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  organization_id UUID NOT NULL,
  FOREIGN KEY (organization_id) REFERENCES public.organizations(id)
);

CREATE TABLE public.products (
  id UUID PRIMARY KEY,
  category_id UUID NOT NULL,
  organization_id UUID NOT NULL,
  name VARCHAR(100) NOT NULL,
  unit_price NUMERIC(10, 2),
  FOREIGN KEY (category_id) REFERENCES public.categories(id),
  CONSTRAINT products_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES public.organizations(id),
  CONSTRAINT products_unit_price_check CHECK (unit_price IS NULL OR unit_price >= 0)
);

CREATE TABLE public.product_stocks (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  product_id UUID NOT NULL,
  branch_id UUID NOT NULL,
  quantity INT NOT NULL DEFAULT 0 CHECK (quantity >= 0),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  FOREIGN KEY (product_id) REFERENCES public.products(id),
  FOREIGN KEY (branch_id) REFERENCES public.branches(id),
  CONSTRAINT product_stocks_product_branch_unique UNIQUE (product_id, branch_id)
);

CREATE TABLE public.user_organizations (
  id UUID PRIMARY KEY,
  organization_id UUID NOT NULL,
  user_id UUID NOT NULL,
  status VARCHAR(20) NOT NULL CHECK (status IN ('pending', 'active')),
  FOREIGN KEY (organization_id) REFERENCES public.organizations(id),
  FOREIGN KEY (user_id) REFERENCES public.users(id)
);

CREATE TABLE public.clients (
  id UUID PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL,
  phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE public.sales (
  id UUID PRIMARY KEY,
  client_id UUID NOT NULL,
  branch_id UUID NOT NULL,
  issue_date DATE NOT NULL,
  status VARCHAR(20) NOT NULL CHECK (status IN ('valid', 'voided')),
  FOREIGN KEY (client_id) REFERENCES public.clients(id),
  FOREIGN KEY (branch_id) REFERENCES public.branches(id)
);

CREATE TABLE public.sale_details (
  id UUID PRIMARY KEY,
  sale_id UUID NOT NULL,
  product_id UUID NOT NULL,
  quantity INT NOT NULL CHECK (quantity > 0),
  unit_price DECIMAL(10, 2) NOT NULL CHECK (unit_price >= 0),
  FOREIGN KEY (sale_id) REFERENCES public.sales(id),
  FOREIGN KEY (product_id) REFERENCES public.products(id)
);

CREATE TABLE public.payment_methods (
  id UUID PRIMARY KEY,
  organization_id UUID NOT NULL,
  name VARCHAR(100) NOT NULL,
  FOREIGN KEY (organization_id) REFERENCES public.organizations(id)
);

CREATE TABLE public.financial_transactions (
  id UUID PRIMARY KEY,
  sale_id UUID,
  FOREIGN KEY (sale_id) REFERENCES public.sales(id)
);

CREATE TABLE public.financial_transaction_movements (
  id UUID PRIMARY KEY,
  financial_transaction_id UUID NOT NULL,
  payment_method_id UUID,
  amount NUMERIC NOT NULL,
  type TEXT NOT NULL CHECK (type IN ('in', 'out')),
  created_by UUID NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  FOREIGN KEY (financial_transaction_id) REFERENCES public.financial_transactions(id),
  FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(id),
  FOREIGN KEY (created_by) REFERENCES public.users(id)
);

ALTER TABLE public.document_types ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.states ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.cities ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.districts ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.organizations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.branches ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.channels ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.telegram_pending_actions ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.products ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.product_stocks ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_organizations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.clients ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.sales ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.sale_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.payment_methods ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.financial_transactions ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.financial_transaction_movements ENABLE ROW LEVEL SECURITY;