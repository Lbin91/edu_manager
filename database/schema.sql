-- 1. Users & Profiles (Supabase Auth 연동)
create table public.users (
  id uuid references auth.users not null primary key,
  email text not null,
  name text,
  role text check (role in ('admin', 'teacher', 'driver', 'pending')) default 'pending',
  academy_id uuid, -- FK added later
  social_provider text,
  fcm_token text,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- 2. Academies
create table public.academies (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  invite_code text unique not null,
  created_at timestamptz default now()
);

-- fk connection
alter table public.users add constraint fk_academy foreign key (academy_id) references public.academies (id);

-- 3. Students
create table public.students (
  id uuid primary key default gen_random_uuid(),
  academy_id uuid references public.academies (id),
  name text not null,
  school_name text,
  grade int,
  parent_phone_primary text not null,
  parent_phone_secondary text,
  sibling_ids uuid[], -- Array of student UUIDs
  address text,
  created_at timestamptz default now()
);

-- 4. Master Stops (기본 정류장)
create table public.master_stops (
  id uuid primary key default gen_random_uuid(),
  academy_id uuid references public.academies (id),
  name text not null,
  lat double precision,
  lng double precision,
  created_at timestamptz default now()
);

-- 5. Shuttle Routes (Combined Schedule + Route)
create table public.shuttle_routes (
  id uuid primary key default gen_random_uuid(),
  academy_id uuid references public.academies (id),
  name text not null, -- e.g. "1호차 등원"
  driver_id uuid references public.users (id),
  car_number text,
  departure_time time,
  stops jsonb, -- [{ "stop_id": uuid, "name": text, "scheduled_time": time, "sequence": int }]
  created_at timestamptz default now()
);

-- 6. Daily Attendance
create table public.daily_attendance (
  id uuid primary key default gen_random_uuid(),
  date date not null,
  student_id uuid references public.students (id),
  route_id uuid references public.shuttle_routes (id),
  stop_id uuid references public.master_stops (id),
  status text check (status in ('waiting', 'boarded', 'dropoff', 'absent')) default 'waiting',
  check_in_time timestamptz,
  check_out_time timestamptz,
  created_at timestamptz default now()
);

-- RLS Policies (Row Level Security) - Basic Setup for MVP
alter table public.users enable row level security;
alter table public.academies enable row level security;
alter table public.students enable row level security;
alter table public.master_stops enable row level security;
alter table public.shuttle_routes enable row level security;
alter table public.daily_attendance enable row level security;

-- Allow read access to authenticated users for now (refine later)
create policy "Allow read for authenticated" on public.users for select using (auth.role() = 'authenticated');
create policy "Allow read for authenticated" on public.academies for select using (auth.role() = 'authenticated');
create policy "Allow read for authenticated" on public.students for select using (auth.role() = 'authenticated');
create policy "Allow read for authenticated" on public.master_stops for select using (auth.role() = 'authenticated');
create policy "Allow read for authenticated" on public.shuttle_routes for select using (auth.role() = 'authenticated');
create policy "Allow read for authenticated" on public.daily_attendance for select using (auth.role() = 'authenticated');

-- Allow insert/update for now (MVP) - Secure this in production!
create policy "Allow all for authenticated" on public.daily_attendance for all using (auth.role() = 'authenticated');
create policy "Allow all for authenticated" on public.users for all using (auth.role() = 'authenticated');
