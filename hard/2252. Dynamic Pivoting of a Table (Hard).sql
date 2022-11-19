CREATE OR REPLACE FUNCTION pivot_products_2252()
RETURNS TEXT
LANGUAGE PLPGSQL
AS 
$$
DECLARE
	store_name_array TEXT[];
	store_name TEXT;
	query_text TEXT;
BEGIN
	--query to find all the stores given in the table
	SELECT ARRAY_AGG(DISTINCT store ORDER BY store)
	INTO store_name_array
	FROM products_2252;
	--RAISE NOTICE 'store_name_array = %',store_name_array;
	
	--prepare query
	query_text := 'SELECT product_id, ';
	
	--prepare case statements for all the store_name in store_name_array
	FOREACH store_name IN ARRAY store_name_array
	LOOP
		query_text := query_text || 'SUM(CASE WHEN store = ''' || store_name || ''' THEN price ELSE NULL END) AS "' || store_name || '",';
	END LOOP;
	
	--prepare query
	query_text := LEFT(query_text,LENGTH(query_text)-1);
	query_text := query_text || ' FROM products_2252 GROUP BY product_id ORDER BY product_id';
	--RAISE NOTICE '%',query_text;
	
	--return the query as text
	RETURN query_text;
END $$;

SELECT pivot_products_2252();

-- output of the function:
SELECT product_id, 
		SUM(CASE WHEN store = 'LC_Store' THEN price ELSE NULL END) AS "LC_Store",
		SUM(CASE WHEN store = 'Nozama' THEN price ELSE NULL END) AS "Nozama",
		SUM(CASE WHEN store = 'Shop' THEN price ELSE NULL END) AS "Shop",
		SUM(CASE WHEN store = 'Souq' THEN price ELSE NULL END) AS "Souq" 
FROM products_2252 
GROUP BY product_id 
ORDER BY product_id;

--running this query manually will give us expected results
