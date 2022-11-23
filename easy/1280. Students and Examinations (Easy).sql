WITH exams AS (
	SELECT student_id,subject_name,COUNT(1) AS attended_exams
	FROM examinations_1280
	GROUP BY student_id,subject_name
),
combinations AS (
	SELECT st.*,sb.subject_name
	FROM students_1280 st
	CROSS JOIN subjects_1280 sb
)
SELECT c.student_id,c.student_name,c.subject_name,COALESCE(e.attended_exams,0)
FROM combinations c
LEFT JOIN exams e ON e.student_id = c.student_id AND e.subject_name = c.subject_name
ORDER BY c.student_id,c.subject_name;
