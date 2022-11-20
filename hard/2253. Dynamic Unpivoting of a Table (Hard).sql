CREATE OR REPLACE FUNCTION unpivot_products_2253()
RETURNS TEXT
LANGUAGE PLPGSQL
AS
$$
DECLARE
	stores_array TEXT[];
	query_text TEXT := '';
	store_name TEXT;
BEGIN
	--query to find all the stores columns of the products table except product_id column
	SELECT ARRAY_AGG(column_name)
	INTO stores_array
	FROM information_schema.columns
	WHERE table_name = 'products_2253' AND column_name <> 'product_id';

	-- prepare query
	FOREACH store_name IN ARRAY stores_array
	LOOP
		query_text := query_text || 'SELECT product_id, ''' || store_name || ''' AS store, "' || store_name ||'" FROM products_2253 WHERE "' || store_name || '" IS NOT NULL';
		query_text := query_text || ' UNION ';
	END LOOP;
	
	query_text := LEFT(query_text,LENGTH(query_text)-6);
	query_text := query_text || ' ORDER BY product_id,store;';

	--return the query as text	
	RETURN query_text;
END
$$;

SELECT unpivot_products_2253();

-- output of the function:
SELECT product_id, 'LC_Store' AS store, "LC_Store" 
FROM products_2253 
WHERE "LC_Store" IS NOT NULL 
UNION 
SELECT product_id, 'Nozama' AS store, "Nozama" 
FROM products_2253 
WHERE "Nozama" IS NOT NULL 
UNION 
SELECT product_id, 'Shop' AS store, "Shop" 
FROM products_2253 
WHERE "Shop" IS NOT NULL 
UNION 
SELECT product_id, 'Souq' AS store, "Souq" 
FROM products_2253 
WHERE "Souq" IS NOT NULL  
ORDER BY product_id,store;

--running this query manually will give us expected results
