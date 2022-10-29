WITH cte AS(
	SELECT user_id1,user_id2 
	FROM friendship_1264
	UNION 
	SELECT user_id2,user_id1
	FROM friendship_1264
),

friends AS(
	SELECT user_id2 AS friends
	FROM cte WHERE user_id1 = 1
)

SELECT DISTINCT page_id
FROM likes_1264
WHERE user_id IN (SELECT * FROM friends) AND 
      page_id NOT IN (SELECT DISTINCT page_id FROM likes_1264 WHERE user_id = 1)
ORDER BY 1;
