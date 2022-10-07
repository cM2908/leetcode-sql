WITH cte AS(
	SELECT *,
		MIN(score) OVER (PARTITION BY exam_id) AS lowest_score,
		MAX(score) OVER (PARTITION BY exam_id) AS highest_score
	FROM exams_1412
),
cte1 AS(
	SELECT DISTINCT student_id
	FROM exams_1412
	EXCEPT
	SELECT DISTINCT student_id
	FROM cte c
	WHERE score = lowest_score OR score = highest_score
)
SELECT s.*
FROM cte1 c 
INNER JOIN students_1412 s ON c.student_id = s.student_id;
