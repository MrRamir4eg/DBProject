alter table video add primary key(id);
create sequence video_seq;
alter table video alter column id set default nextval('video_seq');
