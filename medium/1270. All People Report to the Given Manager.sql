SELECT e1.employee_id
FROM employees_1270 e1 
INNER JOIN employees_1270 e2 
ON e1.manager_id = e2.employee_id 
	AND e1.manager_id = 1
	AND e1.employee_id <> e2.employee_id
UNION
SELECT e1.employee_id
FROM employees_1270 e1 
INNER JOIN employees_1270 e2 
ON e1.manager_id = e2.employee_id
	AND e1.employee_id <> e2.employee_id
INNER JOIN employees_1270 e3
ON e2.manager_id = e3.employee_id
	AND e2.manager_id = 1
	AND e2.employee_id <> e3.employee_id
UNION
SELECT e1.employee_id
FROM employees_1270 e1 
INNER JOIN employees_1270 e2 
ON e1.manager_id = e2.employee_id
	AND e1.employee_id <> e2.employee_id
INNER JOIN employees_1270 e3
ON e2.manager_id = e3.employee_id
	AND e2.employee_id <> e3.employee_id
INNER JOIN employees_1270 e4
ON e3.manager_id = e4.employee_id
	AND e3.manager_id = 1
	AND e3.employee_id <> e4.employee_id;
	
--------------(OR)------------

SELECT e1.employee_id
FROM employees_1270 e1 
INNER JOIN employees_1270 e2 
ON e1.manager_id = e2.employee_id 
INNER JOIN employees_1270 e3 
ON e2.manager_id = e3.employee_id 
WHERE e3.manager_id = 1 AND e1.employee_id <> 1


--------------(OR)------------

WITH RECURSIVE cte AS (
	SELECT employee_id,employee_name,manager_id,1 AS level
	FROM employees_1270
	WHERE employee_id = 1
	UNION
	SELECT e.employee_id,e.employee_name,e.manager_id,level+1 AS level
	FROM cte c
	INNER JOIN employees_1270 e ON c.employee_id = e.manager_id
	WHERE level < 4
)
SELECT DISTINCT employee_id,employee_name FROM cte WHERE employee_id <> 1;
