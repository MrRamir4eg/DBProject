alter table course add primary key(id);
create sequence course_seq;
alter table course alter column id set default nextval('course_seq');

