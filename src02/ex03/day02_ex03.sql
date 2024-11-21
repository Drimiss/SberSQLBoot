WITH dates AS (
  SELECT g::date AS missing_date
  FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS g
)
SELECT d.missing_date
FROM dates d
LEFT JOIN (
  SELECT DISTINCT visit_date
  FROM person_visits
  WHERE person_id IN (1, 2)
) AS pv
  ON d.missing_date = pv.visit_date
WHERE pv.visit_date IS NULL
ORDER BY 1
