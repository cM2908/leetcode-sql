WITH cte AS(
	SELECT dept_id,COUNT(*) AS student_count 
	FROM student_580
	GROUP BY dept_id
)

SELECT dept_name,COALESCE(student_count,0) AS student_count
FROM department_580 d
LEFT JOIN cte c ON c.dept_id = d.dept_id
ORDER BY student_count DESC,dept_name ASC;
