SELECT DISTINCT TO_CHAR(pay_date,'YYYY-MM') AS pay_month,b.department_id,
	CASE WHEN (AVG(amount) OVER w1) = (AVG(amount) OVER w2) THEN 'same'
	     WHEN (AVG(amount) OVER w1) > (AVG(amount) OVER w2) THEN 'lower'
	     ELSE 'higher'
	END AS comparison
FROM salary_615 a
JOIN employee_615 b ON a.employee_id=b.employee_id
WINDOW w1 AS (PARTITION BY TO_CHAR(pay_date,'YYYY-MM')),
	w2 AS (PARTITION BY TO_CHAR(pay_date,'YYYY-MM'),department_id)
ORDER BY 1;
