-- Design a query to suggest popular products in the same category for the same author, 
--   excluding the Purchsed product from the recommendations?
-- Assume We have a created by column that includes the author

SELECT distinct p.* 
FROM product p
LEFT JOIN product_categories pc
ON pc.prod_cat_prod_id = p.prod_id
-- AND pc.prod_cat_detault = 'Y'
WHERE p.prod_id != 5
AND pc.prod_cat_cat_id IN (select pc2.prod_cat_cat_id from product_categories pc2 where pc2.prod_cat_prod_id = 5)
AND p.created_by = (select p1.created_by from product p1 where p1.prod_id = 5)
