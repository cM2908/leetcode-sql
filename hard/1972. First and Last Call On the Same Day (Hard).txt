WITH calls AS (
	SELECT caller_id,recipient_id,call_time
	FROM calls_1972
	UNION 
	SELECT recipient_id,caller_id,call_time
	FROM calls_1972
),
first_last_calls AS (
	SELECT *,
		MIN(call_time) OVER (PARTITION BY caller_id,EXTRACT(DAY FROM call_time)) AS first_call,
		MAX(call_time) OVER (PARTITION BY caller_id,EXTRACT(DAY FROM call_time)) AS last_call
	FROM calls
)
SELECT DISTINCT f.caller_id AS user_id
FROM first_last_calls f
INNER JOIN first_last_calls l
ON f.caller_id = l.caller_id AND 
	f.recipient_id = l.recipient_id AND 
	f.call_time = f.first_call AND 
	l.call_time = l.last_call;
