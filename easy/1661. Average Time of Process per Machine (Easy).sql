SELECT s.machine_id,ROUND(AVG(e.timestamp-s.timestamp)::NUMERIC,3) AS processing_time
FROM activity_1661 s
INNER JOIN activity_1661 e 
ON s.activity_type = 'start' AND e.activity_type = 'end' AND
	s.machine_id = e.machine_id AND s.process_id = e.process_id
GROUP BY s.machine_id;
