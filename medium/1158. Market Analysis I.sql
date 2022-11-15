SELECT u.user_id,u.join_date,COALESCE(b.orders_in_2019,0)
FROM users_1158 u
LEFT JOIN
	(SELECT buyer_id,COUNT(order_id) AS orders_in_2019
	FROM orders_1158
	WHERE EXTRACT(YEAR FROM order_date) = 2019
	GROUP BY buyer_id) b
ON u.user_id = b.buyer_id;
