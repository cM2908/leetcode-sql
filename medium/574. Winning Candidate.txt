SELECT name
FROM candidate_574
WHERE id IN (
	SELECT candidate_id 
	FROM vote_574
	GROUP BY candidate_id
	ORDER BY COUNT(candidate_id) DESC
	LIMIT 1
);
