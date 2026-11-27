-- Undo 010: drops the four link columns (and any links saved in them).
alter table public.pipeline
  drop column if exists instagram_url,
  drop column if exists facebook_url,
  drop column if exists website_url,
  drop column if exists maps_url;
