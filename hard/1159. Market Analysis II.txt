WITH cte AS(
	SELECT *,
		ROW_NUMBER() OVER (PARTITION BY seller_id ORDER BY order_date) AS rn
	FROM orders_1159
),
cte2 AS(
	SELECT seller_id,item_id
	FROM cte
	WHERE rn = 2
)

SELECT u.user_id,
	CASE WHEN c.item_id=i.item_id THEN 'yes'
	     ELSE 'no'
	END AS "2nd_item_fav_brand"
FROM users_1159 u
INNER JOIN items_1159 i ON u.favorite_brand = i.item_brand
LEFT JOIN cte2 c ON u.user_id = c.seller_id
ORDER BY 1;
