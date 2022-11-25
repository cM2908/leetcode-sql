CREATE OR REPLACE FUNCTION pivot_products_1777()
RETURNS TEXT
LANGUAGE PLPGSQL
AS
$$
DECLARE
	stores_array TEXT[];
	store_name TEXT;
	query_text TEXT := '';
BEGIN
	SELECT ARRAY_AGG(DISTINCT store ORDER BY store ASC)
	INTO stores_array
	FROM products_1777;
	
	query_text := query_text || 'SELECT product_id, ';
	FOREACH store_name IN ARRAY stores_array
	LOOP
		query_text := query_text || 'SUM(CASE WHEN store = ''' || store_name || ''' THEN price ELSE NULL END) AS "' || store_name || '",';
	END LOOP;
	query_text := LEFT(query_text,LENGTH(query_text)-1);
	
	query_text := query_text || ' FROM products_1777 GROUP BY product_id ORDER BY product_id;';
	
	RETURN query_text;
END
$$;

SELECT pivot_products_1777();

/*
SELECT product_id, 
	SUM(CASE WHEN store = 'store1' THEN price ELSE NULL END) AS "store1",
	SUM(CASE WHEN store = 'store2' THEN price ELSE NULL END) AS "store2",
	SUM(CASE WHEN store = 'store3' THEN price ELSE NULL END) AS "store3" 
FROM products_1777 
GROUP BY product_id 
ORDER BY product_id;
*/
