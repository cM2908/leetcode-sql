WITH cte AS(
	SELECT customer_id,MIN(order_date) AS first_order
	FROM delivery_1174
	GROUP BY customer_id
)

SELECT ROUND((COUNT(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 ELSE NULL END)::NUMERIC/COUNT(*))*100,2) 
	AS immediate_percentage
FROM delivery_1174 d
INNER JOIN cte c ON d.customer_id = c.customer_id AND d.order_date = c.first_order;
