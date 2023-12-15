create or replace view v_assignment_virtual as
SELECT course.name as course_name, 
assignment.name ||': '|| description as full_description
FROM course
INNER JOIN assignment ON course.id = course_id; 