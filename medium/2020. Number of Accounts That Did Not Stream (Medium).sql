WITH accounts AS (
	SELECT account_id
	FROM subscriptions_2020
	WHERE EXTRACT(YEAR FROM start_date)<=2021 AND EXTRACT(YEAR FROM end_date)>=2021
)
SELECT COUNT(DISTINCT account_id) AS accounts_count
FROM streams_2020
WHERE EXTRACT(YEAR FROM stream_date) <> 2021 AND account_id IN (SELECT * FROM accounts);
