insert into person_visits(id, person_id, pizzeria_id, visit_date) 
values (
	(select max(id)+1 from person_visits),
  	(select id from person where name= 'Dmitriy'),
	(select pizzeria.id from pizzeria inner join menu m on pizzeria.id = m.pizzeria_id
	where price < 800 and m.pizza_name!='Papa Johns' order by 1 limit 1),'2022-01-08');
refresh materialized view mv_dmitriy_visits_and_eats