SELECT id,
	SUM(CASE WHEN month = 'Jan' THEN revenue ELSE NULL END) AS Jan_Revenue,
	SUM(CASE WHEN month = 'Feb' THEN revenue ELSE NULL END) AS Feb_Revenue,
	SUM(CASE WHEN month = 'Mar' THEN revenue ELSE NULL END) AS Mar_Revenue,
	SUM(CASE WHEN month = 'Apr' THEN revenue ELSE NULL END) AS Apr_Revenue,
	SUM(CASE WHEN month = 'May' THEN revenue ELSE NULL END) AS May_Revenue,
	SUM(CASE WHEN month = 'Jun' THEN revenue ELSE NULL END) AS Jun_Revenue,
	SUM(CASE WHEN month = 'Jul' THEN revenue ELSE NULL END) AS Jul_Revenue,
	SUM(CASE WHEN month = 'Aug' THEN revenue ELSE NULL END) AS Aug_Revenue,
	SUM(CASE WHEN month = 'Sep' THEN revenue ELSE NULL END) AS Sep_Revenue,
	SUM(CASE WHEN month = 'Oct' THEN revenue ELSE NULL END) AS Oct_Revenue,
	SUM(CASE WHEN month = 'Nov' THEN revenue ELSE NULL END) AS Nov_Revenue,
	SUM(CASE WHEN month = 'Dec' THEN revenue ELSE NULL END) AS Dec_Revenue
FROM department_1179
GROUP BY id
ORDER BY id;


-- Extra 
(SELECT id::TEXT,
	SUM(CASE WHEN month = 'Jan' THEN revenue ELSE 0 END) AS Jan_Revenue,
	SUM(CASE WHEN month = 'Feb' THEN revenue ELSE 0 END) AS Feb_Revenue,
	SUM(CASE WHEN month = 'Mar' THEN revenue ELSE 0 END) AS Mar_Revenue,
	SUM(revenue) AS Total
FROM department_1179
GROUP BY id)
UNION
(SELECT NULL,
	SUM(CASE WHEN month = 'Jan' THEN revenue ELSE 0 END) AS JTR,
	SUM(CASE WHEN month = 'Feb' THEN revenue ELSE 0 END) AS FTR,
	SUM(CASE WHEN month = 'Mar' THEN revenue ELSE 0 END) AS MTR,
	SUM(revenue) AS TR
FROM department_1179
GROUP BY 1)
ORDER BY 1;

