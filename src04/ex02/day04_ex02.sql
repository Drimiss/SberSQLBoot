CREATE VIEW v_generated_dates AS
SELECT g::DATE AS generated_date
FROM generate_series('2022-01-01', '2022-01-31', INTERVAL '1 day') AS g
ORDER BY 1
