SELECT pc.product_id,pc.quantity,pc.quantity*pd.price AS price
FROM purchases_2362 pc
INNER JOIN products_2362 pd ON pc.product_id = pd.product_id
WHERE invoice_id = (SELECT pc.invoice_id
		    FROM purchases_2362 pc
		    INNER JOIN products_2362 pd ON pc.product_id = pd.product_id
		    GROUP BY pc.invoice_id
		    ORDER BY SUM(quantity*price) DESC,pc.invoice_id ASC
		    LIMIT 1);
