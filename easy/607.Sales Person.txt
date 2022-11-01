WITH cte AS(
	SELECT s.sales_id
	FROM orders_607 o
	JOIN company_607 c ON o.com_id = c.com_id
	JOIN salesperson_607 s ON o.sales_id = s.sales_id
	WHERE c.name like 'RED'
)

SELECT DISTINCT name
FROM salesperson_607
WHERE sales_id NOT IN (SELECT * 
			FROM cte);
