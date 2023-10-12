alter table accountant add primary key(id);
create sequence accountant_seq;
alter table accountant alter column id set default nextval('accountant_seq');