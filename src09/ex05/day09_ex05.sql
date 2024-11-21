
DROP FUNCTION IF EXISTS fnc_persons_female();
DROP FUNCTION IF EXISTS fnc_persons_male();

CREATE OR REPLACE FUNCTION fnc_persons(IN pgender VARCHAR DEFAULT 'female') 
RETURNS TABLE (id BIGINT,
                name VARCHAR,
                age INTEGER,
                gender VARCHAR,
                address VARCHAR) as $$ (SELECT *
                                        FROM person
                                        WHERE gender = pgender)$$
LANGUAGE SQL;

SELECT * from fnc_persons('male')