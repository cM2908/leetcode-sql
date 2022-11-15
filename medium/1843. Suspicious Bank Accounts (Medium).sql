WITH monthly_income_data AS (
	SELECT t.account_id,EXTRACT(MONTH FROM day) AS mnth,SUM(amount) AS total_income
	FROM transactions_1843 t
	INNER JOIN accounts_1843 a ON t.account_id = a.account_id AND t.type = 'Creditor'
	GROUP BY t.account_id,EXTRACT(MONTH FROM day),a.max_income
	HAVING SUM(amount)>a.max_income
)
SELECT DISTINCT m1.account_id
FROM monthly_income_data m1 
INNER JOIN monthly_income_data m2 
ON m1.account_id=m2.account_id AND m1.mnth + 1 = m2.mnth;
