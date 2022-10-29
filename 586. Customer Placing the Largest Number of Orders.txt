SELECT customer_number
FROM orders_586
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;


--ANSWER OF EXTRA QUESTION:

WITH cte AS (
SELECT COUNT(order_number) AS count
FROM orders_586
GROUP BY customer_number
ORDER BY count DESC
LIMIT 1)

SELECT customer_number
FROM orders_586
GROUP BY customer_number
HAVING COUNT(order_number) IN (SELECT count FROM cte);
