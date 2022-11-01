SELECT stock_name,
	SUM(CASE WHEN operation = 'Buy' THEN price * -1 
		ELSE price END) AS capital_gain_loss
FROM stocks_1393
GROUP BY stock_name
ORDER BY capital_gain_loss DESC;
