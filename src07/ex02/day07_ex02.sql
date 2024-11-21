
  (SELECT name,
          COUNT(*) AS count,
          'visit' AS action_type
   FROM person_visits
   JOIN pizzeria ON pizzeria.id = pizzeria_id
   GROUP BY name
   ORDER BY count DESC
   LIMIT 3)
UNION
  (SELECT name,
          COUNT(*),
          'order'
   FROM person_order
   JOIN menu ON menu.id = menu_id
   JOIN pizzeria ON pizzeria.id = pizzeria_id
   GROUP BY name
   ORDER BY count DESC
   LIMIT 3)
ORDER BY action_type ASC,
         count DESC;