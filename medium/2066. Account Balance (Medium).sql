WITH fixed_amount AS (
	SELECT account_id,day,
		CASE WHEN type = 'Deposit' THEN amount
			 ELSE amount*-1
		END AS amount
	FROM transactions_2066
)
SELECT account_id,day,
	SUM(amount) OVER (PARTITION BY account_id ORDER BY day) AS balance
FROM fixed_amount
ORDER BY account_id,day;
