WITH grouped AS(
	SELECT visited_on,SUM(amount) AS amount
	FROM customer_1321
	GROUP BY visited_on
),
cte AS (
	SELECT *,ROW_NUMBER() OVER (ORDER BY visited_on) AS num
	FROM grouped
),
cte2 AS(
	SELECT *,
		SUM(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS sum_amount,
		ROUND(AVG(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) AS average_amount
	FROM cte
)
SELECT visited_on,sum_amount,average_amount
FROM cte2
WHERE num>=7;

---------------------------------------------------------------------------------------------------------------------------------

WITH daily_spent AS (
	SELECT visited_on,SUM(amount) AS amount,
		ROW_NUMBER() OVER (ORDER BY visited_on) AS rn
	FROM customer_1321
	GROUP BY visited_on
),
moving_averages AS (
	SELECT visited_on,rn,
		ROUND((AVG(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)),2) AS running_avg
	FROM daily_spent
	ORDER BY visited_on
)
SELECT *
FROM moving_averages
WHERE rn >= 7;

-- Window functions are evaluated after group by clause got executed, and window functions are applied to the result of group by clause.
