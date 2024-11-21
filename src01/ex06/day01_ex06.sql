SELECT DISTINCT
    person_order.order_date AS action_date, 
    person.name AS person_name
FROM 
    person_order
INNER JOIN person ON person_order.person_id = person.id
WHERE 
    (person_order.person_id, person_order.order_date) IN (
        SELECT person_id, visit_date 
        FROM person_visits)
ORDER BY 
    action_date ASC, 
    person_name DESC
