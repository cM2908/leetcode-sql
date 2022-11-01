SELECT product_id,year,quantity,price
FROM sales_1068
WHERE (product_id,year) IN (SELECT product_id,MIN(year)
			  FROM sales_1068
			  GROUP BY product_id);
