-- SQL Query to Calculate the revenue generated from each product category.

SELECT c.cat_name AS category_name, SUM(oi.ord_item_qty * oi.ord_item_price) AS total_revenue
from category c
inner join product_categories pc
on c.cat_id = pc.prod_cat_cat_id
inner join order_item oi
on pc.prod_cat_prod_id = oi.ord_item_prod_id
group by c.cat_name
order by total_revenue DESC;
