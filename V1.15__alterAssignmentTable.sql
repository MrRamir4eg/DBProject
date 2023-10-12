alter table assignment add primary key(id);
create sequence assignment_seq;
alter table assignment alter column id set default nextval('assignment_seq');