WITH friends AS (
	SELECT user1_id,user2_id
	FROM friendship_1892
	UNION ALL
	SELECT user2_id,user1_id
	FROM friendship_1892
),
possible_recommendation AS (
	SELECT f.user1_id,f.user2_id,l2.page_id
	FROM friends f
	INNER JOIN likes_1892 l1 ON f.user1_id = l1.user_id
	INNER JOIN likes_1892 l2 ON f.user2_id = l2.user_id AND l1.page_id <> l2.page_id
)
SELECT user1_id,page_id,COUNT(DISTINCT user2_id) AS friends_likes
FROM possible_recommendation
WHERE (user1_id,page_id) NOT IN (SELECT * FROM likes_1892)
GROUP BY user1_id,page_id
ORDER BY user1_id,page_id;
