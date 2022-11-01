SELECT activity_date,COUNT(DISTINCT user_id)
FROM activity_1141
WHERE activity_date <= '2019-07-27' AND activity_date >= DATE '2019-07-27'-30
GROUP BY activity_date;
