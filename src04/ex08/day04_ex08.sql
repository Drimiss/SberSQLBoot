SELECT p.name AS person_name, m.pizza_name AS pizza_name, piz.name AS pizzeria_name
FROM person_order AS p_o
JOIN person p on p_o.person_id = p.id
JOIN menu m on p_o.menu_id = m.id
JOIN pizzeria piz on m.pizzeria_id = piz.id
ORDER BY person_name, pizza_name, pizzeria_name