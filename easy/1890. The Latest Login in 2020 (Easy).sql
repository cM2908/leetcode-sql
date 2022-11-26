SELECT user_id,MAX(time_stamp) AS last_stamp
FROM logins_1890
WHERE EXTRACT(YEAR FROM time_stamp) = 2020
GROUP BY user_id;
