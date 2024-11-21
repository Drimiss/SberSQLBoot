-- session 1
BEGIN;
UPDATE pizzeria
SET rating = 3.8
WHERE id = 1;

UPDATE pizzeria
SET rating = 1.4
WHERE id = 2;

-- session 2
BEGIN;
UPDATE pizzeria
SET rating = 1.8
WHERE id = 2;

UPDATE pizzeria
SET rating = 1.8
WHERE id = 1;