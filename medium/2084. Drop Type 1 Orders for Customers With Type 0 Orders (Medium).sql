SELECT * FROM orders_2084
WHERE (customer_id, order_type) 
IN (SELECT customer_id, MIN(order_type) 
    FROM orders_2084
    GROUP BY customer_id)
