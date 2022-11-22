SELECT student_id,department_id,
	ROUND((RANK() OVER (PARTITION BY department_id ORDER BY mark DESC)-1)*100/
	(COUNT(student_id) OVER (PARTITION BY department_id)-1),2) AS percentage
FROM students_2346;
