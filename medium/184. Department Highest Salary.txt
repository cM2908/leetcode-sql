SELECT d.name AS Department,e.name AS Employee,e.salary AS Salary
FROM employee_184 e
JOIN department_184 d ON e.department_id = d.id
WHERE (e.department_id,e.salary) IN (SELECT department_id,MAX(salary)
				FROM employee_184
				GROUP BY department_id);

(OR)

WITH cte AS(
SELECT d.name AS Department,e.name AS Employee,
	DENSE_RANK() OVER w rnk
FROM employee_184 e
JOIN department_184 d ON e.department_id = d.id
WINDOW w AS (PARTITION BY d.name ORDER BY e.salary DESC)
)

SELECT Department,Employee
FROM cte 
WHERE rnk = 1;
