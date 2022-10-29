SELECT project_id
FROM project_1075
GROUP BY project_id
ORDER BY COUNT(employee_id) DESC
LIMIT 1;
