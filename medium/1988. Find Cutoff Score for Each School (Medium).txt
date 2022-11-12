SELECT s.school_id,COALESCE(MIN(e.score),-1) AS max_filled_students
FROM school_1988 s
LEFT JOIN exam_1988 e
ON s.capacity >= student_count
GROUP BY s.school_id
ORDER BY s.school_id;
