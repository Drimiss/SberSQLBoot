CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(IN pperson varchar DEFAULT 'Dmitriy', 
                                                              IN pprice numeric DEFAULT 500, 
                                                              IN pdate date DEFAULT '2022-01-08')
RETURNS TABLE (name varchar) AS $$
BEGIN
    RETURN QUERY
        SELECT pizzeria.name 
        FROM menu INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
                    INNER JOIN person_visits ON menu.pizzeria_id = person_visits.pizzeria_id
                    INNER JOIN person ON person_visits.person_id = person.id
        WHERE person.name = pperson AND visit_date = pdate AND price < pprice;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM fnc_person_visits_and_eats_on_date(pprice := 800);
SELECT * FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');


    