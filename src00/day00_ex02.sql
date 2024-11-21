-- task 02.1
SELECT 
    name,
    rating
FROM pizzeria
WHERE 
    rating <= 5
    and rating >= 3.5
ORDER BY rating;
-- task 02.2
SELECT 
    name,
    rating
FROM pizzeria
WHERE
     rating BETWEEN 3.5 and 5
ORDER BY rating;
