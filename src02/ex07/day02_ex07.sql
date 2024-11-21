SELECT pz.name
FROM menu m
INNER JOIN pizzeria pz ON pz.id = pizzeria_id
INNER join person_visits pv on m.pizzeria_id=pv.pizzeria_id
INNER join person p on p.id= pv.person_id
where (p.name = 'Dmitriy' and pv.visit_date = '2022-01-08'and m.price<800)
ORDER by 1