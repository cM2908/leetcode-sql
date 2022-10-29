WITH ranked AS(
	SELECT *,
		ROW_NUMBER() OVER w AS rnk
	FROM student_618
	WINDOW w AS (PARTITION BY continent ORDER BY name)
)
SELECT
	MAX(CASE WHEN continent = 'America' THEN name END) AS America,
	MAX(CASE WHEN continent = 'Europe' THEN name END) AS Europe,
	MAX(CASE WHEN continent = 'Asia' THEN name END) AS Asia
FROM ranked
GROUP BY rnk
ORDER BY rnk;

--Why we need to rank the rows? Without it below will be the result.

SELECT
	CASE WHEN continent = 'America' THEN name END AS America,
	CASE WHEN continent = 'Europe' THEN name END AS Europe,
	CASE WHEN continent = 'Asia' THEN name END AS Asia
FROM student_618;
