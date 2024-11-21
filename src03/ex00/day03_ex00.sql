SELECT pizza_name, price, pz.name as pizzeria_name, pv.visit_date
from menu m
INNER JOIN pizzeria pz on pz.id=m.pizzeria_id
INNER join person_visits pv on pz.id=pv.pizzeria_id
INNER join person p on p.id= pv.person_id
INNER join person_order po on po.person_id=p.id
WHERE p.name='Kate' and price between 800 and 1000
order by 1,2,3