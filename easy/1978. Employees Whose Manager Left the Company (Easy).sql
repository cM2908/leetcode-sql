SELECT DISTINCT e1.employee_id
FROM employees_1978 e1
LEFT JOIN employees_1978 e2 
ON e1.manager_id = e2.employee_id
WHERE e1.salary < 30000 AND e2.employee_id IS NULL;
