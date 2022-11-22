SELECT e.employee_id
FROM employees_2394 e
LEFT JOIN logs_2394 l ON e.employee_id = l.employee_id
GROUP BY e.employee_id,e.needed_hours
HAVING COALESCE(SUM(EXTRACT(hour FROM (out_time-in_time))+
		FLOOR((EXTRACT(minute FROM (out_time-in_time)) + CEIL(EXTRACT(second FROM (out_time-in_time))/60))/60)),0) < e.needed_hours
