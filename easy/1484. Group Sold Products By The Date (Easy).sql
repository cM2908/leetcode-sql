SELECT sell_date,COUNT(DISTINCT product) AS num_sold,STRING_AGG(DISTINCT product,',' ORDER BY product) AS products
FROM activities_1484
GROUP BY sell_date
ORDER BY sell_date;
