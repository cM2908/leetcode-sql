SELECT a.student_name,b.student_name,c.student_name
FROM school_a_1623 a
CROSS JOIN school_b_1623 b
CROSS JOIN school_c_1623 c
WHERE a.student_id <> b.student_id AND a.student_id <> c.student_id AND b.student_id <> c.student_id AND
	a.student_name <> b.student_name AND a.student_name <> c.student_name AND b.student_name <> c.student_name;
