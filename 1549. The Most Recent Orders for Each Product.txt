WITH recent_orders AS (
	SELECT o1.*
	FROM orders_1549 o1
	LEFT JOIN orders_1549 o2 ON o1.product_id = o2.product_id AND o1.order_date < o2.order_date
	WHERE o2.order_id IS NULL
)
SELECT p.product_name,p.product_id,ro.order_id,ro.order_date
FROM recent_orders ro
INNER JOIN products_1549 p ON ro.product_id = p.product_id
ORDER BY p.product_name,p.product_id,ro.order_id;
