SELECT c1.user_id
FROM confirmations_1939 c1
INNER JOIN confirmations_1939 c2 ON c1.user_id = c2.user_id AND c1.time_stamp < c2.time_stamp
WHERE EXTRACT(EPOCH FROM (c2.time_stamp-c1.time_stamp)) <= 24*60*60;
