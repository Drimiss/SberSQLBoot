-- session 1
BEGIN TRANSACTION ISOLATION LEVEL read committed;
SELECT SUM(rating) FROM pizzeria;
SELECT SUM(rating) FROM pizzeria;
COMMIT;
SELECT SUM(rating) FROM pizzeria;

-- session 2
BEGIN TRANSACTION ISOLATION LEVEL read committed;
INSERT INTO pizzeria
VALUES (11, 'Ka Pizza', 4);
COMMIT;
SELECT SUM(rating) FROM pizzeria;