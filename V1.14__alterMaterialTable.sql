alter table material add primary key(id);
create sequence material_seq;
alter table material alter column id set default nextval('material_seq');