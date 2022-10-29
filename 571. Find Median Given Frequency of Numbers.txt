WITH cte AS(
	SELECT *,
		SUM(frequency) OVER w AS e,
		SUM(frequency) OVER () AS t
	FROM numbers_571_tc_2
	WINDOW w AS (ORDER BY number)
),
cte2 AS(	
	SELECT number,frequency,
		CASE WHEN (LAG(e::INT,1,1) OVER w)=1 THEN (LAG(e::INT,1,1) OVER w) ELSE (LAG(e::INT,1,1) OVER w )+1 END AS s,e,t
	FROM cte
	WINDOW w AS (ORDER BY number)
)

SELECT ROUND(AVG(number),2)
FROM cte2
WHERE (t::NUMERIC/2 BETWEEN s AND e) OR (t::NUMERIC/2+1 BETWEEN s AND e);
