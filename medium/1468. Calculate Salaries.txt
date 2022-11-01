WITH cte AS (
	SELECT *,
		MAX(salary) OVER (PARTITION BY company_id) AS max_salary
	FROM salaries_1468
)
SELECT *,
	ROUND(
	CASE WHEN max_salary<1000 THEN salary
	     WHEN max_salary<=10000 THEN salary-(salary*24)/100
	     ELSE salary-(salary*49)/100
	END) AS new_salary
FROM cte;
