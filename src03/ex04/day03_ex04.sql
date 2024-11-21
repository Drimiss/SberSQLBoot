(select p2.name as pizzeria_name
    from person p inner join person_order pv on p.id = pv.person_id
    inner join menu on menu.id = pv.menu_id
    inner join pizzeria p2 on p2.id = menu.pizzeria_id
    where p.gender = 'female'
except

select p2.name
    from person p inner join person_order pv on p.id = pv.person_id
    inner join menu on menu.id = pv.menu_id
    inner join pizzeria p2 on p2.id = menu.pizzeria_id
    where p.gender = 'male')

union

(select p2.name
    from person p inner join person_order pv on p.id = pv.person_id
    inner join menu on menu.id = pv.menu_id
    inner join pizzeria p2 on p2.id = menu.pizzeria_id
    where p.gender = 'male'

except

select p2.name
    from person p inner join person_order pv on p.id = pv.person_id
    inner join menu on menu.id = pv.menu_id
    inner join pizzeria p2 on p2.id = menu.pizzeria_id
    where p.gender = 'female')
order by 1