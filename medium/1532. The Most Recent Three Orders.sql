WITH ranked AS (
	SELECT *,
		DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY order_date DESC) AS rn
	FROM orders_1532
)
SELECT c.name AS customer_name,r.customer_id,r.order_id,r.order_date
FROM ranked r
INNER JOIN customers_1532 c ON r.customer_id=c.customer_id
WHERE rn<=3
ORDER BY c.name,c.customer_id,r.order_date DESC;

---------------Without Window function---------------

SELECT o1.customer_id,o1.order_date,COUNT(o2.order_date)
FROM orders_1532 o1
INNER JOIN orders_1532 o2 ON o1.customer_id=o2.customer_id AND o1.order_date<=o2.order_date
GROUP BY o1.customer_id,o1.order_date
HAVING COUNT(o2.order_date)<=3
ORDER BY 1,2 DESC;

-- Main logic is over now we only need to apply 2 joins to bring other columns.
