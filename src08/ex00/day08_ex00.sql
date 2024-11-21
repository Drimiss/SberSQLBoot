-- session 1
begin;
UPDATE pizzeria
SET rating = 5
where name = 'Pizza Hut';
commit;

-- session 2
SELECT * FROM pizzeria;