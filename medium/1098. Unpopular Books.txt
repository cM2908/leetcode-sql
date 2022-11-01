SELECT b.book_id, b.name
FROM books_1098 b 
LEFT JOIN (
	SELECT book_id, SUM(quantity) nsold
	FROM orders_1098
	WHERE dispatch_date BETWEEN '2018-06-23' AND '2019-06-23'
	GROUP BY book_id
	) o
ON b.book_id = o.book_id
WHERE (o.nsold < 10 OR o.nsold IS NULL) AND '2019-06-23'::DATE-b.available_from > 30;
