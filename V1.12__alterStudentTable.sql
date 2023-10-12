alter table student add primary key(id);
create sequence student_seq;
alter table student alter column id set default nextval('student_seq');