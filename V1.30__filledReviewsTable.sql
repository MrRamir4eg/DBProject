-- insert into reviews (user_id, content)
select generate_series(1, 10000) as user_id,
case
		when random() < 0.1 then 'Преподаватели супер!'
		when random() between 0.1 and 0.2 then 'Хорошо объясняют, мне понравилось'
		when random() between 0.2 and 0.4 then 'Очень долгие видео даже на 2х, можно компактнее излагать материал?'
		when random() between 0.4 and 0.6 then 'Классная атмосфера на занятиях, самая лучшая школа!'
		when random() between 0.6 and 0.8 then 'Всё супер, но могли ли бы вы добавить курс по немецкому?'
		when random() between 0.8 and 0.9 then 'Как связаться с преподом?'
		else 'За два месяца с 0 научился писать пробники на 100, рекомендую'
	end as content