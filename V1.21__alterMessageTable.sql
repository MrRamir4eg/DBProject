alter table message add primary key(id);
create sequence message_seq;
alter table message alter column id set default nextval('message_seq');
