SELECT pizza_name, pz.name as pizzeria_name, price  FROM menu
INNER join pizzeria pz on pz.id= menu.pizzeria_id
where pizza_name = 'pepperoni pizza' or pizza_name = 'mushroom pizza'
ORDER by 1,2