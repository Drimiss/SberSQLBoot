SELECT m.pizza_name as pizza_name,
pz.name as pizzeria_name
FROM menu m
INNER JOIN pizzeria pz ON pz.id = pizzeria_id
INNER join person_order po on po.menu_id= m.id
INNER join person p on p.id= po.person_id
where p.name in ('Denis','Anna')
ORDER by 1,2