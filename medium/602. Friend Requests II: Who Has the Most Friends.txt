WITH cte AS(
	SELECT requester_id AS uid
	FROM request_accepted_602
	UNION ALL
	SELECT accepter_id AS uid
	FROM request_accepted_602
)

SELECT uid,COUNT(uid) num_of_friends
FROM cte
GROUP BY uid
ORDER BY num_of_friends DESC
LIMIT 1;


--Answer of follow-up question:

WITH cte AS(
	SELECT requester_id AS uid
	FROM request_accepted_602
	UNION ALL
	SELECT accepter_id AS uid
	FROM request_accepted_602
)

SELECT uid
FROM cte
GROUP BY uid
HAVING COUNT(uid) = (SELECT COUNT(uid) num_of_friends
		     FROM cte
		     GROUP BY uid
		     ORDER BY num_of_friends DESC
		     LIMIT 1);
