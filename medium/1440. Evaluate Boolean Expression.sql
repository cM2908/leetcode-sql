SELECT e.*,
	CASE WHEN operator = '=' THEN v1.value = v2.value
	     WHEN operator = '>' THEN v1.value > v2.value
	     WHEN operator = '<' THEN v1.value < v2.value
	END AS value
FROM expressions_1440 e
INNER JOIN variables_1440 v1 ON e.left_operand = v1.name
INNER JOIN variables_1440 v2 ON e.right_operand = v2.name;
