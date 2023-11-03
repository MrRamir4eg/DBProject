insert into message(student_id, curator_id, content) 
	select
	(random() * 10000)::int,
	(random() * 10000)::int,
	case
		when random() < 0.1 then 'У меня не получается первое задание'
		when random() between 0.1 and 0.2 then 'Задание выполнено, посмотрите, пожалуйста'
		when random() between 0.2 and 0.4 then 'Нужна помощь с последним заданием'
		when random() between 0.4 and 0.6 then 'Скиньте список литературы, пожалуйста'
		when random() between 0.6 and 0.8 then 'Преподаватель меня некорректно оценил'
		when random() between 0.8 and 0.9 then 'Я хочу поменять преподаваеля'
		else 'Спасибо!'
	end
from generate_series(1,10000) id;