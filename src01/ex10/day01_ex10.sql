SELECT per.name as person_name, m.pizza_name as pizza_name, pizz.name as pizzeria_name
from person_order per_o INNER JOIN person per on per_o.person_id = per.id
inner join menu m on per_o.menu_id = m.id
INNER join pizzeria pizz on m.pizzeria_id = pizz.id
order by person_name, pizza_name, pizzeria_name ASC
