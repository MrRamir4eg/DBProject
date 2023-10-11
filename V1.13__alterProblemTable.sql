alter table problem add primary key(id);
create sequence problem_seq;
alter table problem alter column id set default nextval('problem_seq');