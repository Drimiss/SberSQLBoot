-- task 03
SELECT DISTINCT 
    person_id
FROM person_visits
WHERE 
    (
        visit_date >= '2022-01-06'
        and visit_date <= '2022-01-09'
    )
    or person_id = 2
ORDER BY person_id DESC;
