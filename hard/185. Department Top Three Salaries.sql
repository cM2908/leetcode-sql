WITH cte AS(
SELECT d.name AS Department,e.name AS Employee,e.salary AS Salary,
	DENSE_RANK() OVER w rnk
FROM employee_185 e
JOIN department_185 d ON e.department_id = d.id
WINDOW w AS (PARTITION BY d.name ORDER BY e.salary DESC)
)

SELECT Department,Employee,Salary,rnk
FROM cte 
WHERE rnk BETWEEN 1 AND 3;
