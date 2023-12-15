create or replace view v_messages_virtual as
	select name, content
	from student s, message m
	where s.id = m.student_id;