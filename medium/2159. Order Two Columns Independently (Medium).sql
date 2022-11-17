WITH ranked_first_column AS (
	SELECT first_col,
		ROW_NUMBER() OVER (ORDER BY first_col) AS rn
	FROM data_2159
),
ranked_second_column AS (
	SELECT second_col,
		ROW_NUMBER() OVER (ORDER BY second_col DESC) AS rn
	FROM data_2159
)
SELECT f.first_col,s.second_col
FROM ranked_first_column f
JOIN ranked_second_column s ON f.rn = s.rn;
