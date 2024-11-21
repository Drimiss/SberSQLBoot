--Session #1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

--Session #2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
COMMIT;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';