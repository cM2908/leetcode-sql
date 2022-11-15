SELECT seller_id
FROM sales_1082
GROUP BY seller_id
HAVING SUM(price) IN (
			SELECT SUM(price) AS m_sum
			FROM sales_1082
			GROUP BY seller_id
			ORDER BY m_sum DESC 
			LIMIT 1
			);
