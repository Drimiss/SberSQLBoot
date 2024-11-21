INSERT INTO person_discounts(id,person_id,pizzeria_id,discount)
select
    ROW_NUMBER() OVER () AS id,
    person_id,
    m.pizzeria_id,
    (case when count(*) = 1 then 10.5
    when count(*) = 2 then 22
    else 30 end) as discount 
from person_order po 
join menu m on po.menu_id = m.id 
group by person_id, m.pizzeria_id