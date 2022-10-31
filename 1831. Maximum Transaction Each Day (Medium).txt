-- (Using MAX() function)

WITH updated_transactions AS (
	SELECT *,
		MAX(amount) OVER (PARTITION BY DATE_TRUNC('DAY',day)) as max_amount
	FROM transactions_1831
)
SELECT transactions_id
FROM updated_transactions
WHERE amount = max_amount
ORDER BY transactions_id;

--OR (Without using MAX() function)

WITH updated_transactions AS (
	SELECT *,
		RANK() OVER (PARTITION BY DATE_TRUNC('DAY',day) ORDER BY amount DESC) as rn
	FROM transactions_1831
)
SELECT transactions_id
FROM updated_transactions
WHERE rn= 1
ORDER BY transactions_id;

--OR (Without using window functions)

WITH max_amounts AS (
	SELECT DISTINCT t1.day,t1.amount AS max_amt
	FROM transactions_1831 t1
	LEFT JOIN transactions_1831 t2 ON DATE_TRUNC('DAY',t1.day)=DATE_TRUNC('DAY',t2.day) AND t2.amount>t1.amount
	WHERE t2.transactions_id IS NULL
)
SELECT transactions_id
FROM transactions_1831
WHERE (day,amount) IN (SELECT * FROM max_amounts)
ORDER BY transactions_id;
