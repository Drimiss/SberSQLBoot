SELECT name 
from pizzeria
WHERE id not in (SELECT pizzeria_id from person_visits);

SELECT 
	name 
from pizzeria
WHERE NOT EXISTS 
	(SELECT 1 
    from person_visits 
    where person_visits.pizzeria_id = pizzeria.id)
