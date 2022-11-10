WITH tagged_accounts AS (
	SELECT *,
			CASE WHEN income < 20000 THEN 'Low Salary'
				 WHEN income >= 20000 AND income <= 50000 THEN 'Average Salary'
				 ELSE 'High Salary'
			END AS salary_tag
	FROM accounts_1907
),
salary_tags AS (
	SELECT UNNEST(ARRAY['Low Salary','Average Salary','High Salary']) AS salary_tag
)
SELECT st.salary_tag,COALESCE(COUNT(account_id),0) AS accounts_count
FROM salary_tags st
LEFT JOIN tagged_accounts ta ON st.salary_tag = ta.salary_tag
GROUP BY st.salary_tag;
