create table if not exists public.dorm_state (
  id text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.dorm_state enable row level security;

drop policy if exists "Dorm state can be read by website visitors" on public.dorm_state;
create policy "Dorm state can be read by website visitors"
on public.dorm_state for select
using (true);

drop policy if exists "Dorm state can be created by website visitors" on public.dorm_state;
create policy "Dorm state can be created by website visitors"
on public.dorm_state for insert
with check (true);

drop policy if exists "Dorm state can be updated by website visitors" on public.dorm_state;
create policy "Dorm state can be updated by website visitors"
on public.dorm_state for update
using (true)
with check (true);

insert into public.dorm_state (id, data)
values ('main', '{}')
on conflict (id) do nothing;

