SELECT DISTINCT session_id
FROM playback_1809 pb 
LEFT JOIN ads_1809 ad 
ON pb.customer_id = ad.customer_id AND 
	ad.timestamp BETWEEN start_time AND end_time
WHERE ad_id IS NULL;

