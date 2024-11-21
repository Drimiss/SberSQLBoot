-- task 04
-- тут я впервые узнала что-то новое --
SELECT 
    concat(name,' (age:',age,',gender:''',gender,''',address:''',address,''')') AS person_information
FROM
    person
ORDER BY 
    person_information;
;
