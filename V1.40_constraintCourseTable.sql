alter table course add constraint check_duration_year check (
  to_timestamp(CAST(duration AS text), 'YYYY-MM-DD') < to_timestamp((extract(year from now()) + 1)::text || '-01-01', 'YYYY-MM-DD')
);