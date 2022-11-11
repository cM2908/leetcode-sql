WITH similar_friends AS(
	SELECT l1.user_id AS user_id1,l2.user_id AS user_id2,COUNT(l1.song_id)
	FROM listens_1919 l1
	INNER JOIN listens_1919 l2 
	ON l1.user_id < l2.user_id AND
		l1.song_id = l2.song_id AND
		l1.day = l2.day
	GROUP BY l1.user_id,l2.user_id
	HAVING COUNT(l1.song_id) >= 3
)
SELECT f.*
FROM similar_friends sf
INNER JOIN friendship_1919 f ON sf.user_id1 = f.user1_id AND sf.user_id2 = f.user2_id;
