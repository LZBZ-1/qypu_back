ALTER TABLE public.clients
  ADD COLUMN organization_id UUID REFERENCES public.organizations(id),
  ALTER COLUMN email DROP NOT NULL,
  ALTER COLUMN phone_number DROP NOT NULL;

CREATE INDEX clients_organization_name_idx
ON public.clients (organization_id, lower(name))
WHERE organization_id IS NOT NULL;
