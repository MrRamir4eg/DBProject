-- insert into groupp (id, course_id, name)
select generate_series(1, 10000) as id,
case
		when random() < 0.1 then (random()*10000)::int
		when random() between 0.1 and 0.2 then (random()*10000)::int
		when random() between 0.2 and 0.4 then (random()*10000)::int
		when random() between 0.4 and 0.6 then (random()*10000)::int
		when random() between 0.6 and 0.8 then (random()*10000)::int
		when random() between 0.8 and 0.9 then (random()*10000)::int
		else (random()*10000)::int
	end as course_id,
	case
	when random() < 0.1 then 'Полина Голубева'
		when random() between 0.1 and 0.2 then 'Анастасия Волочкова'
		when random() between 0.2 and 0.4 then 'Павел Деревянко'
		when random() between 0.4 and 0.6 then 'Марьяна Рожкова'
		when random() between 0.6 and 0.8 then 'Никита Лобанов'
		when random() between 0.8 and 0.9 then 'Аркадий Паровозов'
		else 'Алексей Щербаков'
	end as name