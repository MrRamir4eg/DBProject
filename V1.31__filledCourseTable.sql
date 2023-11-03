insert into course (id, name, duration, price, subject)
select generate_series(1, 10000) as id,
case
		when random() < 0.1 then 'Павел Иванов'
		when random() between 0.1 and 0.2 then 'Мария Новикова'
		when random() between 0.2 and 0.4 then 'Александр Мельник'
		when random() between 0.4 and 0.6 then 'Дина Цветаева'
		when random() between 0.6 and 0.8 then 'Елизавета Штирлиц'
		when random() between 0.8 and 0.9 then 'Николай Донской'
		else 'Майкл Григорян'
	end as name,
	case 
		when random() < 0.3 then to_timestamp('2023-07-01', 'YYYY-MM-DD')
		when random() between 0.3 and 0.6 then to_timestamp('2023-09-01', 'YYYY-MM-DD')
		else to_timestamp('2023-01-12', 'YYYY-MM-DD')
	end as duration,
	case 
		when random() < 0.3 then 12500
		when random() between 0.3 and 0.6 then 10000
		else 15000
	end as price,
	case
		when random() < 0.1 then 'Математика'
		when random() between 0.1 and 0.2 then 'Русский язык'
		when random() between 0.2 and 0.3 then 'История'
		when random() between 0.3 and 0.4 then 'Литература'
		when random() between 0.4 and 0.5 then 'Биология'
		when random() between 0.5 and 0.6 then 'Обществознание'
		when random() between 0.6 and 0.7 then 'Химия'
		when random() between 0.7 and 0.8 then 'Физика'
		when random() between 0.8 and 0.9 then 'Английский язык'
		else 'Философия'
	end as subject
