insert into video(subject, duration) 
	select
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
	end,
	(random() * 500)::int
from generate_series(1,10000) id;