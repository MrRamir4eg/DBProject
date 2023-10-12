alter table teacher add primary key(id);
create sequence teacher_seq;
alter table teacher alter column id set default nextval('teacher_seq');
