(SELECT u.name
FROM movie_rating_1341 mr 
INNER JOIN users_1341 u ON mr.user_id = u.user_id
GROUP BY u.name
ORDER BY COUNT(mr.rating) DESC,u.name
LIMIT 1)
UNION 
(SELECT m.title
FROM movie_rating_1341 mr 
INNER JOIN movies_1341 m ON mr.movie_id = m.movie_id
WHERE EXTRACT(MONTH FROM created_at)=2
GROUP BY m.title
ORDER BY AVG(mr.rating) DESC,m.title
LIMIT 1);
