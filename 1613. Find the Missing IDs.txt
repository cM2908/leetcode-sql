WITH RECURSIVE max_id AS(
	SELECT MAX(customer_id) AS mx_id
	FROM customers_1613
),
cte AS (
	SELECT 1 AS id
	UNION ALL
	SELECT id+1 AS id
	FROM cte c
	INNER JOIN max_id m ON true
	WHERE c.id<m.mx_id
)
SELECT ct.id AS ids
FROM cte ct
LEFT JOIN customers_1613 c ON ct.id = c.customer_id
WHERE c.customer_id IS NULL
ORDER BY ids;
