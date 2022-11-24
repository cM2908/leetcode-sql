WITH par_spent AS (
	SELECT c.name,DATE_TRUNC('MONTH',o.order_date)::DATE,SUM(quantity*price) AS spent
	FROM orders_1511 o
	INNER JOIN product_1511 p
	ON o.product_id = p.product_id AND 
	(DATE_TRUNC('MONTH',o.order_date)::DATE = '2020-06-01' OR DATE_TRUNC('MONTH',o.order_date)::DATE = '2020-07-01')
	INNER JOIN customers_1511 c
	ON c.customer_id = o.customer_id
	GROUP BY c.name,DATE_TRUNC('MONTH',o.order_date)::DATE
	HAVING SUM(quantity*price)>=100
)
SELECT name
FROM par_spent
GROUP BY name
HAVING COUNT(name) = 2;
