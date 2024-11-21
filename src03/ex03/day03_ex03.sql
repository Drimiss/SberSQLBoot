(select p2.name as pizzeria_name
	from person p inner join person_visits pv on p.id = pv.person_id
	inner join pizzeria p2 on p2.id = pv.pizzeria_id
	where p.gender = 'female'
 
except all
 
select p2.name
	from person p inner join person_visits pv on p.id = pv.person_id
	inner join pizzeria p2 on p2.id = pv.pizzeria_id
	where p.gender = 'male')
    
union all

(select p2.name
	from person p inner join person_visits pv on p.id = pv.person_id
	inner join pizzeria p2 on p2.id = pv.pizzeria_id
	where p.gender = 'male'
except all

select p2.name
	from person p inner join person_visits pv on p.id = pv.person_id
	inner join pizzeria p2 on p2.id = pv.pizzeria_id
	where p.gender = 'female')
order by 1