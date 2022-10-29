SELECT p.project_id,p.employee_id
FROM project_1077 p
JOIN employee_1077 e ON p.employee_id=e.employee_id
WHERE (p.project_id,e.experience_years) IN (SELECT p.project_id,MAX(e.experience_years)
					     FROM project_1077 p
					     JOIN employee_1077 e ON p.employee_id=e.employee_id
					     GROUP BY p.project_id)
ORDER BY 1;


--(OR)


WITH ranked AS(
	SELECT p.project_id,p.employee_id,
		DENSE_RANK() OVER (w) rnk
	FROM project_1077 p
	JOIN employee_1077 e ON p.employee_id=e.employee_id
	WINDOW w AS (PARTITION BY p.project_id ORDER BY e.experience_years DESC)
)

SELECT project_id,employee_id
FROM ranked
WHERE rnk =1;
