-- task 05
SELECT (
        SELECT name
        FROM person
        WHERE person.id = person_order.person_id
    ) AS NAME
FROM person_order
WHERE 
    order_date = '2022-01-07'
    and (
        menu_id = 13
        or menu_id = 14
        or menu_id = 18
    );
