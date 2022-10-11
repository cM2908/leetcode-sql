SELECT s1.sale_date,s1.sold_num-s2.sold_num AS diff
FROM sales_1445 s1
INNER JOIN sales_1445 s2 ON s1.sale_date=s2.sale_date AND s1.fruit <> s2.fruit AND s1.fruit = 'apples';
