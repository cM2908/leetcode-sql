WITH calls AS (
	SELECT from_id,to_id,duration
	FROM calls_1699
	UNION ALL
	SELECT to_id,from_id,duration
	FROM calls_1699
)
SELECT from_id,to_id,COUNT(*) AS call_count,SUM(duration) AS total_duration
FROM calls
WHERE from_id<to_id
GROUP BY from_id,to_id;
