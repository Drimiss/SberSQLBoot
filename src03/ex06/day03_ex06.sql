SELECT
m.pizza_name,
pizz.name,
pizz2.name
FROM menu m
INNER join menu m2 on m.id != m2.id and m.price = m2.price and m.pizzeria_id!=m2.pizzeria_id
INNER join pizzeria pizz on pizz.id = m.pizzeria_id
INNER join pizzeria pizz2 on pizz2.id = m2.pizzeria_id
ORDER by 1
