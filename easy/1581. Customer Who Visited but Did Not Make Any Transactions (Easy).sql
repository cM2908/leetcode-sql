SELECT v.customer_id,COUNT(v.visit_id)
FROM visits_1581 v
LEFT JOIN transactions_1581 t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id
ORDER BY v.customer_id;
