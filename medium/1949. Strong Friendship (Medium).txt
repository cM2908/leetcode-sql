WITH friends AS (
	SELECT user1_id,user2_id
	FROM friendship_1949
	UNION
	SELECT user2_id,user1_id
	FROM friendship_1949
)
SELECT f1.user1_id,f2.user1_id,COUNT(f2.user1_id) AS num_mututal_friends
FROM friends f1
INNER JOIN friends f2 
ON f1.user1_id <> f2.user1_id AND f1.user2_id = f2.user2_id
WHERE f1.user1_id < f2.user1_id
GROUP BY f1.user1_id,f2.user1_id
HAVING COUNT(f2.user1_id) >=3
