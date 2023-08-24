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

--------------------------- OR ----------------------------

WITH likes AS (
	SELECT user_id,ARRAY_AGG(page_id) as liked_pages
	FROM likes_1264
	GROUP BY user_id
),friends AS (
	SELECT user_id1,user_id2,page_id
	FROM friendship_1264 f
	JOIN likes_1264 l ON f.user_id1 = l.user_id 
	UNION ALL
	SELECT user_id2,user_id1,page_id
	FROM friendship_1264 f
	JOIN likes_1264 l ON f.user_id2 = l.user_id 
),reco AS(
	SELECT f.user_id1 AS from_user, f.user_id2 AS friend, f.page_id AS page_to_reco, liked_pages AS friend_already_liked_pages
	FROM friends f
	JOIN likes l ON f.user_id2 = l.user_id AND (NOT f.page_id = ANY (liked_pages))
)
SELECT DISTINCT page_to_reco
FROM reco
WHERE friend = 1
ORDER BY page_to_reco;
