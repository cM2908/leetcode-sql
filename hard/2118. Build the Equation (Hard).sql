-- Table Name for Test-Case 1: terms_2118
-- Table Name for Test-Case 2: terms_2118_tc_2

WITH terms AS (
	SELECT power,ABS(factor) AS factor,
		(CASE WHEN factor < 0 THEN '-' ELSE '+' END) AS sign,
		(CASE WHEN power = 1 THEN CONCAT(ABS(factor),'X')
			  WHEN power = 0 THEN ABS(factor)::TEXT
			  ELSE CONCAT(ABS(factor),'X^',power)
		 END) AS term
	FROM terms_2118
)
SELECT CONCAT(STRING_AGG(CONCAT(sign,term),'' ORDER BY power DESC),'=0') AS equation
FROM terms;

-- Solution of the follow-up question (Table : terms_2118_tc_3)

WITH grouped_terms AS (
	SELECT power,SUM(factor) AS factor
	FROM terms_2118_tc_3
	GROUP BY power
),
terms AS (
	SELECT power,ABS(factor) AS factor,
		(CASE WHEN factor < 0 THEN '-' ELSE '+' END) AS sign,
		(CASE WHEN power = 1 THEN CONCAT(ABS(factor),'X')
			  WHEN power = 0 THEN ABS(factor)::TEXT
			  ELSE CONCAT(ABS(factor),'X^',power)
		 END) AS term
	FROM grouped_terms
)
SELECT CONCAT(STRING_AGG(CONCAT(sign,term),'' ORDER BY power DESC),'=0') AS equation
FROM terms;
