COMMENT ON table person_discounts
    IS 'This table provides some information about person discount in each pizzeria';

COMMENT ON column person_discounts.id
	IS 'id - row identificator (PK)';

COMMENT ON column person_discounts.person_id
	IS 'person_id - person identificator';

COMMENT ON column person_discounts.pizzeria_id
	IS 'pizzeria_id - pizzeria identificator';

COMMENT ON column person_discounts.discount
	IS 'discount - person discount (0-100) for each pizzeria';