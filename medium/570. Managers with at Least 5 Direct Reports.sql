WITH managers AS(
	SELECT manager_id
	FROM employee_570
	GROUP BY manager_id
	HAVING COUNT(manager_id)>=5
)

SELECT name
FROM employee_570
WHERE id IN (SELECT * FROM managers);
