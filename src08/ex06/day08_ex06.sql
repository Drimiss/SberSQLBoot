-- session 1
begin transaction isolation level repeatable read;
select sum(rating) from pizzeria;
select sum(rating) from pizzeria;
COMMIT;
select sum(rating) from pizzeria;

-- session 2
begin transaction isolation level repeatable read;
INSERT INTO pizzeria
VALUES (12, 'Kazan Pizza 2', 4);
COMMIT;
select sum(rating) from pizzeria;