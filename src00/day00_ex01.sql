-- task 01
SELECT 
    name,
    age
FROM person
WHERE 
    address = 'Kazan'
    and gender = 'female'
ORDER BY name;
