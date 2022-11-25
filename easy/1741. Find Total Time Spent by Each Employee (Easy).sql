SELECT event_day AS day,emp_id,SUM(out_time-in_time) AS total_time
FROM employees_1741
GROUP BY event_day,emp_id
ORDER BY day,emp_id;
