SELECT u.name,SUM(t.amount)
FROM transactions_1587 t
INNER JOIN users_1587 u ON t.account=u.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000

