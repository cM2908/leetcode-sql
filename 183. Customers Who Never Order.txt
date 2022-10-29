SELECT name 
FROM customers_183 
WHERE id NOT IN (SELECT DISTINCT customer_id 
		 FROM orders_183);
