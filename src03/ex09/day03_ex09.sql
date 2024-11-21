select count(*)=2 as check from person_visits where visit_date = '2022-02-24' and person_id in (6,4) and pizzeria_id=2;
