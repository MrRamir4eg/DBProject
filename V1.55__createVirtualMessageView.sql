create or replace view v_messages as 
select '***' as student_id,
curator_id,
content 
from message m;