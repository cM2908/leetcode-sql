SELECT p.project_id,ROUND(AVG(e.experience_years),2)
FROM project_1075 p
JOIN employee_1075 e ON p.employee_id=e.employee_id
GROUP BY p.project_id
ORDER BY 1;
