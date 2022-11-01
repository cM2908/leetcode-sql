WITH dedup AS (
	SELECT *
	FROM logins_1454
	GROUP BY id,login_date
),
cte AS (
	SELECT id,login_date,
		LEAD(login_date,4) OVER (PARTITION BY id ORDER BY login_date) AS date_5
	FROM dedup
)
SELECT a.id,a.name
FROM cte c
INNER JOIN accounts_1454 a ON a.id = c.id
WHERE c.date_5-c.login_date=4;
