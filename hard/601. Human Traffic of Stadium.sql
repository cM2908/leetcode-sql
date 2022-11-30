SELECT DISTINCT s1.*
FROM stadium_601 s1 
JOIN stadium_601 s2
JOIN stadium_601 s3
ON ((s1.id = s2.id-1 AND s1.id = s3.id-2) OR (s1.id = s2.id+1 AND s1.id = s3.id-1) OR (s1.id = s2.id+1 AND s1.id = s3.id+2))
WHERE s1.people >= 100 AND s2.people >= 100 AND s3.people>=100
ORDER BY visit_date;

------------------------------------------------------------------------------------------------------------------------------------

WITH ranked AS(
	SELECT *,
		ROW_NUMBER() OVER w AS rn,
		(id - ROW_NUMBER() OVER w) AS diff
	FROM stadium_601
	WHERE people>=100
	WINDOW w AS (ORDER BY visit_date)
),
consecutive AS(
	SELECT diff,COUNT(diff) count
	FROM ranked
	GROUP BY diff
)

SELECT id,visit_date,people
FROM ranked r
LEFT JOIN consecutive c ON r.diff = c.diff
WHERE c.count >=3
ORDER BY visit_date;

------------------------------------------------------------------------------------------------------------------------------------

WITH ranked AS (
	SELECT *,
		id-ROW_NUMBER() OVER (ORDER BY id) AS diff
	FROM stadium_601
	WHERE people >= 100
),
consecutives AS (
	SELECT *,
		COUNT(id) OVER (PARTITION BY diff) AS cnt
	FROM ranked
)
SELECT id,visit_date,people
FROM consecutives
WHERE cnt >= 3
ORDER BY visit_date;
