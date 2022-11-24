SELECT LOWER(TRIM(product_name)) AS product_name,TO_CHAR(sale_date,'YYYY-MM') AS sale_date,COUNT(sale_id) AS total
FROM sales_1543
GROUP BY LOWER(TRIM(product_name)),TO_CHAR(sale_date,'YYYY-MM')
ORDER BY product_name,sale_date;
