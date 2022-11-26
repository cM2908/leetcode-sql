SELECT COUNT(DISTINCT user_id) AS user_cnt
FROM purchases_2205
WHERE (DATE_TRUNC('DAY',time_stamp) BETWEEN '2022-03-08' AND '2022-03-20') AND amount >= 1000;
