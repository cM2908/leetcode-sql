SELECT employee_id,
	COUNT(employee_id) OVER (PARTITION BY team_id) AS team_size
FROM employee_1303
ORDER BY employee_id;
