alter table marketer add primary key(id);
create sequence marketer_seq;
alter table marketer alter column id set default nextval('marketer_seq');