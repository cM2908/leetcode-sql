SELECT user_id,SUM(s.quantity*p.price) AS spending
FROM sales_2329 s
INNER JOIN product_2329 p ON s.product_id = p.product_id
GROUP BY user_id
ORDER BY spending DESC,user_id;
