WITH last_rates AS (
    SELECT DISTINCT ON (id) id, name, rate_to_usd
    FROM currency
    ORDER BY id, updated DESC
)
SELECT COALESCE(u.name, 'not defined') AS name,
       COALESCE(u.lastname, 'not defined') AS lastname,
       b.type AS type,
       SUM(b.money) AS volume,
       COALESCE(MAX(lr.name), 'not defined') AS currency_name,
       COALESCE(MAX(lr.rate_to_usd), 1) AS last_rate_to_usd,
       SUM(b.money) * COALESCE(MAX(lr.rate_to_usd), 1) AS total_volume_in_usd
FROM "user" u
FULL JOIN balance b ON u.id = b.user_id
LEFT JOIN last_rates lr ON lr.id = b.currency_id
GROUP BY u.name, u.lastname, b.type
ORDER BY name DESC, lastname ASC, type ASC;