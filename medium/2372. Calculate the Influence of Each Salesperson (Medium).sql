WITH sales AS (
	SELECT c.salesperson_id,SUM(s.price) AS total
	FROM customer_2372 c
	INNER JOIN sales_2372 s ON c.customer_id = s.customer_id
	GROUP BY c.salesperson_id
)
SELECT sp.salesperson_id,sp.name,COALESCE(s.total,0) AS total
FROM salesperson_2372 sp
LEFT JOIN sales s ON sp.salesperson_id = s.salesperson_id;
