SELECT pizzeria.name,
       COUNT(*) AS count_of_orders,
       ROUND (AVG(price), 2)::REAL,
       MAX(price) AS max_price,
       MIN(price) AS min_price
FROM person_order
JOIN menu ON menu.id = menu_id
JOIN pizzeria ON pizzeria.id = pizzeria_id
GROUP BY pizzeria.name
ORDER BY pizzeria.name;