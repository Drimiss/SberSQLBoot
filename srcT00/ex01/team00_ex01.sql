SELECT sum AS total_cost, '{' || tour || ',' || point2 || '}' AS tour
FROM journey
WHERE point2 = 'a' AND length(tour) = 7 AND point2 = 'a'
ORDER BY 1, 2;