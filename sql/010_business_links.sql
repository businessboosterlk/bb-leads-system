-- 27 Nov 2026, Thulaib: "save the business Instagram link, the website link, all the links".
-- Four empty text columns on pipeline. Additive only: nothing existing changes. Table grants cover new columns.
alter table public.pipeline
  add column if not exists instagram_url text,
  add column if not exists facebook_url text,
  add column if not exists website_url text,
  add column if not exists maps_url text;
