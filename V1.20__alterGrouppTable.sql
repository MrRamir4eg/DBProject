alter table groupp add primary key(id);
create sequence groupp_seq;
alter table groupp alter column id set default nextval('groupp_seq');
