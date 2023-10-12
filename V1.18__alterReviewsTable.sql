alter table reviews add primary key(user_id);
create sequence reviews_seq;
alter table reviews alter column user_id set default nextval('reviews_seq');
