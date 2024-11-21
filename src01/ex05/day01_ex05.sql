SELECT *
from person p cross join pizzeria pizz
order by p.id, pizz.id ASC
