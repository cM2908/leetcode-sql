SELECT mgr.employee_id,mgr.name,COUNT(emp.name) AS reports_count,ROUND(AVG(emp.age)) AS average_age
FROM employees_1731 mgr
INNER JOIN employees_1731 emp ON mgr.employee_id = emp.reports_to
GROUP BY mgr.employee_id,mgr.name
ORDER BY mgr.employee_id;
