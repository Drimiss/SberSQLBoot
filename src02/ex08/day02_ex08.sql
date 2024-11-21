SELECT p.name
from person p
INNER join person_order po on p.id = po.person_id
INNER join menu m on po.menu_id= m.id
WHERE gender = 'male' and (address in ('Moscow', 'Samara')) and (m.pizza_name in ('pepperoni pizza','mushroom pizza'))
ORDER by 1 DESC