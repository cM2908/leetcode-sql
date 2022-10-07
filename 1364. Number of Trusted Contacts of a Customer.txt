WITH all_contacts AS(
	SELECT user_id,COUNT(contact_name) AS a_contacts
	FROM contacts_1364
	GROUP BY user_id
),
trusted_contacts AS(
	SELECT user_id,COUNT(contact_name) AS t_contacts
	FROM contacts_1364 ct
	INNER JOIN customers_1364 cs ON ct.contact_name = cs.customer_name
	GROUP BY user_id
)

SELECT i.*,COALESCE(a_contacts,0) all_contacts,COALESCE(t_contacts,0) trusted_contacts
FROM invoices_1364 i
LEFT JOIN all_contacts ac ON i.user_id = ac.user_id
LEFT JOIN trusted_contacts tc ON i.user_id = tc.user_id
ORDER BY 1;
