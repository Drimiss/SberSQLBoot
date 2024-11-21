SELECT address,
       formula,
       average,
       CASE
           WHEN formula > average THEN 'true'
           ELSE 'false'
       END AS comparison
FROM
  ( SELECT address,
           ROUND(MAX(age) - (MIN(age::NUMERIC) / MAX(age)), 2)::REAL AS formula,
           ROUND(AVG(age), 2)::REAL AS average
   FROM person
   GROUP BY address ) alias_select
ORDER BY address;