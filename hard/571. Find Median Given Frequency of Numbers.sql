WITH cte AS(
	SELECT *,
		SUM(frequency) OVER w AS e,
		SUM(frequency) OVER () AS t
	FROM numbers_571_tc_2
	WINDOW w AS (ORDER BY number)
),
cte2 AS(	
	SELECT number,frequency,
		CASE WHEN (LAG(e::INT,1) OVER w) IS NULL THEN 1 ELSE (LAG(e::INT,1) OVER w)+1 END AS s,
		e,t
	FROM cte
	WINDOW w AS (ORDER BY number)
)

SELECT ROUND(AVG(number),1)
FROM cte2
WHERE (t::NUMERIC/2 BETWEEN s AND e) OR (t::NUMERIC/2+1 BETWEEN s AND e);

--------------------------- OR ---------------------------

WITH RECURSIVE cte AS (
	SELECT number,frequency,1 AS cnt
	FROM numbers_571
	UNION ALL
	SELECT number,frequency,cnt+1 AS cnt
	FROM cte
	WHERE cnt < frequency
),
cte2 AS (
	SELECT number,
		ROW_NUMBER() OVER (ORDER BY number) AS a,
		COUNT(*) OVER () c
	FROM cte
)
SELECT ROUND(AVG(number),1) 
FROM cte2
WHERE a BETWEEN (SELECT CEIL(AVG(c)::NUMERIC/2) FROM cte2) AND (SELECT CEIL((AVG(c)+1::NUMERIC)/2) FROM cte2)

--------------------------- OR ---------------------------

WITH RECURSIVE cte AS (
	SELECT number,frequency,1 AS cnt
	FROM numbers_571
	UNION ALL
	SELECT number,frequency,cnt+1 AS cnt
	FROM cte
	WHERE cnt < frequency
),
cte2 AS (
	SELECT number,
		ROW_NUMBER() OVER (ORDER BY number) AS a
	FROM cte
),
cte3 AS (
	SELECT number,a,
		ROW_NUMBER() OVER (ORDER BY a DESC) AS d
	FROM cte2	
)
SELECT ROUND(AVG(number),1)
FROM cte3
WHERE ABS(a-d) = 0 OR ABS(a-d) = 1;

