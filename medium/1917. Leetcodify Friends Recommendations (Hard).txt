WITH all_recommendations AS (
	SELECT l1.user_id AS user_id1,l2.user_id AS user_id2,COUNT(l1.song_id) AS listened_songs
	FROM listens_1917 l1
	INNER JOIN listens_1917 l2
	ON l1.user_id <> l2.user_id AND 
		l1.song_id = l2.song_id AND
		l1.day = l2.day
	GROUP BY l1.user_id,l2.user_id
	HAVING COUNT(l1.song_id)>=3
),
friends AS (
	SELECT user1_id,user2_id 
	FROM friendship_1917
	UNION 
	SELECT user2_id,user1_id 
	FROM friendship_1917
)
SELECT r.user_id1,r.user_id2
FROM all_recommendations r
LEFT JOIN friends f ON f.user1_id = r.user_id1 AND f.user2_id = r.user_id2
WHERE f.user1_id IS NULL;

