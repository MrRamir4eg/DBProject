insert into assignment(name, course_id, description)
	select
		case
			when random() < 0.2 then 'Эссе'
			when random() between 0.2 and 0.4 then 'Доклад'
			when random() between 0.4 and 0.6 then 'Презентация'
			when random() between 0.6 and 0.8 then 'Повторение'
			when random() between 0.8 and 0.9 then 'Конспект'
			else 'Самостоятельная практика'
		end,

		(random()*10000)::int,

		case
			when random() < 0.2 then 'Использовать учебник'
			when random() between 0.2 and 0.4 then 'Использовать материалы занятия'
			when random() between 0.4 and 0.6 then 'Использовать Интернет'
			when random() between 0.6 and 0.8 then 'Использовать собственные записи'
			else 'Использовать рабочую тетрадь'
		end

from generate_series(1,10000) id;

