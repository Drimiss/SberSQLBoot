SELECT name,
       SUM(count) AS total_count
FROM (
        (SELECT name,
                COUNT(name) AS count
         FROM person_visits
         JOIN pizzeria ON pizzeria.id = pizzeria_id
         GROUP BY name)
      UNION ALL
        (SELECT name,
                COUNT(name)
         FROM person_order
         JOIN menu ON menu.id = menu_id
         JOIN pizzeria ON pizzeria.id = pizzeria_id
         GROUP BY name)) alias_union
GROUP BY name
ORDER BY total_count DESC,
         name ASC;