SELECT g::date AS missing_date
FROM generate_series('2022-01-01','2022-01-10', interval '1 day') AS g
LEFT JOIN (
  SELECT DISTINCT visit_date
  FROM person_visits
  WHERE person_id IN (1, 2)
) AS pv
  ON g::date = pv.visit_date
WHERE pv.visit_date IS NULL
ORDER BY 1