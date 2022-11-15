SELECT extra,COUNT(DISTINCT post_id)
FROM actions_1113
WHERE extra IS NOT NULL AND action_date = DATE '2019-07-05'-1
GROUP BY extra;
