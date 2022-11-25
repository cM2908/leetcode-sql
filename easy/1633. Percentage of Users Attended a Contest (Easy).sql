SELECT contest_id,ROUND((COUNT(DISTINCT user_id)*100.0)/user_count.cnt,2) AS percentage
FROM register_1633
CROSS JOIN (SELECT COUNT(*) AS cnt FROM users_1633) user_count
GROUP BY contest_id,user_count.cnt
ORDER BY percentage DESC,contest_id;

--OR--

SELECT contest_id,ROUND((COUNT(DISTINCT user_id)*100.0)/(SELECT COUNT(*) AS cnt FROM users_1633),2) AS percentage
FROM register_1633
GROUP BY contest_id
ORDER BY percentage DESC,contest_id;
