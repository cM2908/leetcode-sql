WITH RECURSIVE customer_purchase_years AS (
	SELECT customer_id,MIN(EXTRACT(YEAR FROM order_date)) AS min_year,MAX(EXTRACT(YEAR FROM order_date)) AS max_year
	FROM orders_2474
	GROUP BY customer_id
),
all_years AS (
	SELECT customer_id,min_year AS year,max_year
	FROM customer_purchase_years
	UNION
	SELECT customer_id,year+1 AS year,max_year
	FROM all_years
	WHERE year<max_year
),
all_year_purchases AS (
	SELECT ay.customer_id,ay.year,COALESCE(SUM(o.price),0) AS total_purchase
	FROM all_years ay
	LEFT JOIN orders_2474 o ON ay.customer_id = o.customer_id AND ay.year = EXTRACT(YEAR FROM o.order_date)
	GROUP BY ay.customer_id,ay.year
),
ranked AS (
	SELECT *,
		DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY year) -
		DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY total_purchase) AS diff
	FROM all_year_purchases
)
SELECT DISTINCT customer_id
FROM ranked
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM ranked WHERE diff <> 0);

--OR--

WITH cte AS(
	SELECT customer_id, EXTRACT(YEAR FROM order_date) AS year, price
	FROM orders_2474
),
cte1 AS(
	SELECT customer_id,year,SUM(price) AS prices
	FROM cte
	GROUP BY customer_id,year
),
cte2 AS(
	SELECT *,
		DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY prices) AS rn
	FROM cte1
),
cte3 AS(
	SELECT DISTINCT customer_id,year-rn AS new_line
	FROM cte2
)
SELECT customer_id 
FROM cte3
GROUP BY customer_id
HAVING (COUNT(new_line)=1);
