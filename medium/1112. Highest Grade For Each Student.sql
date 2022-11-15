WITH ranked AS(
	SELECT *,
		RANK() OVER (PARTITION BY student_id ORDER BY grade DESC,course_id ASC) AS rnk
	FROM enrollments_1112
)

SELECT student_id,course_id,grade
FROM ranked
WHERE rnk = 1;
