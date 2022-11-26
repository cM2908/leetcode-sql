SELECT COALESCE(e.employee_id,s.employee_id)
FROM employees_1965 e
FULL OUTER JOIN salaries_1965 s ON e.employee_id = s.employee_id
WHERE e.name IS NULL OR s.salary IS NULL;
