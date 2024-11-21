create materialized view mv_dmitriy_visits_and_eats as
select p.name as pizzeria_name
from menu 
inner join pizzeria p on p.id = menu.pizzeria_id
inner join person_visits pv on menu.pizzeria_id = pv.pizzeria_id
inner join person p2 on p2.id = pv.person_id
where 
	price < 800 and p2.name = 'Dmitriy' and visit_date = '2022-01-08'
