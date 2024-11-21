SELECT address,
       pizzeria.name,
       COUNT(*) AS count_of_orders
FROM person_order
JOIN person ON person.id = person_id
JOIN menu ON menu.id = menu_id
JOIN pizzeria ON pizzeria.id = pizzeria_id
GROUP BY pizzeria.name,
         address
ORDER BY address,
         name;