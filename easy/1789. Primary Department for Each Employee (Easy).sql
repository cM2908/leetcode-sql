WITH employee_departments AS (
	SELECT *,
		COUNT(employee_id) OVER (PARTITION BY employee_id) AS cnt
	FROM employee_1789
)
SELECT employee_id,department_id
FROM employee_departments
WHERE primary_flag = 'Y' OR (primary_flag = 'N' AND cnt = 1);
