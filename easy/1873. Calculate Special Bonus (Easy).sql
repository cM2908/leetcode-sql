SELECT employee_id,
	CASE WHEN employee_id%2 <> 0 AND LEFT(name,1)<>'M' THEN salary 
		 ELSE 0
	END AS bonus
FROM employees_1873;
