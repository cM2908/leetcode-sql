SELECT ROUND((COUNT(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE NULL END)::NUMERIC/COUNT(*))*100,2) 
	AS immediate_percentage
FROM delivery_1173;
