insert into accountant(name, password)
	select
		case
			when random() < 0.1 then 'Виктория'
			when random() between 0.1 and 0.2 then 'Ясмин'
			when random() between 0.2 and 0.3 then 'Лейла'
			when random() between 0.3 and 0.4 then 'Татьяна'
			when random() between 0.4 and 0.5 then 'Дмитрий'
			when random() between 0.5 and 0.6 then 'Никита'
			when random() between 0.6 and 0.7 then 'Аристарх'
			when random() between 0.7 and 0.8 then 'Гомер'
			when random() between 0.8 and 0.9 then 'Руслан'
			else 'Сталина'
		end,

		md5(random()::text)

from generate_series(1,10000) id;




	

