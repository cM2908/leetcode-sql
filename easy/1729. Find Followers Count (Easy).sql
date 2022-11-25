SELECT user_id,COUNT(follower_id) AS follower_count
FROM followers_1729
GROUP BY user_id
ORDER BY user_id;
