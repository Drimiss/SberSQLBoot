SELECT piz.name
FROM person_visits pv
INNER join person p on p.id= pv.person_id
INNER join pizzeria piz on piz.id= pv.pizzeria_id
WHERE p.name = 'Andrey'
EXCEPT
SELECT piz.name
FROM person_order po
INNER join person p on p.id= po.person_id
INNER join menu m on m.id = po.menu_id
INNER join pizzeria piz on piz.id=m.pizzeria_id
WHERE p.name = 'Andrey'