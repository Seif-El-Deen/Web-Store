# Total revenue for each category
## SQL Query to Calculate the revenue generated from each product category.
```sql
SELECT c.cat_name AS category_name, SUM(oi.ord_item_qty * oi.ord_item_price) AS total_revenue
from category c
inner join product_categories pc
on c.cat_id = pc.prod_cat_cat_id
inner join order_item oi
on pc.prod_cat_prod_id = oi.ord_item_prod_id
group by c.cat_name
order by total_revenue DESC;
```

## Execution Time Before Optimization
```sql
-> Sort: total_revenue DESC  (actual time=5.87..5.87 rows=45 loops=1)
    -> Table scan on <temporary>  (actual time=5.77..5.78 rows=45 loops=1)
        -> Aggregate using temporary table  (actual time=5.77..5.77 rows=45 loops=1)
            -> Nested loop inner join  (cost=723 rows=454) (actual time=0.152..4.74 rows=442 loops=1)
                -> Nested loop inner join  (cost=236 rows=200) (actual time=0.108..0.504 rows=200 loops=1)
                    -> Covering index scan on pc using fk_prod_cat_cat_id  (cost=21 rows=200) (actual time=0.0893..0.164 rows=200 loops=1)
                    -> Single-row index lookup on c using PRIMARY (cat_id=pc.prod_cat_cat_id)  (cost=0.974 rows=1) (actual time=0.00126..0.00131 rows=1 loops=200)
                -> Index lookup on oi using fk_ord_items_prod_id (ord_item_prod_id=pc.prod_cat_prod_id)  (cost=2.21 rows=2.27) (actual time=0.0184..0.0206 rows=2.21 loops=200)
```

## Optimization Technique
### 
```sql
ALTER TABLE order_item ADD INDEX idx_order_item_prod_id_qty_price (ord_item_prod_id, ord_item_qty, ord_item_price);
```
## Execution Time After Optimization
```sql
-> Sort: total_revenue DESC  (actual time=2.02..2.02 rows=45 loops=1)
    -> Table scan on <temporary>  (actual time=1.93..1.94 rows=45 loops=1)
        -> Aggregate using temporary table  (actual time=1.93..1.93 rows=45 loops=1)
            -> Nested loop inner join  (cost=485 rows=489) (actual time=0.106..1.32 rows=442 loops=1)
                -> Nested loop inner join  (cost=236 rows=200) (actual time=0.0693..0.287 rows=200 loops=1)
                    -> Covering index scan on pc using fk_prod_cat_cat_id  (cost=21 rows=200) (actual time=0.0542..0.0978 rows=200 loops=1)
                    -> Single-row index lookup on c using PRIMARY (cat_id=pc.prod_cat_cat_id)  (cost=0.974 rows=1) (actual time=718e-6..752e-6 rows=1 loops=200)
                -> Covering index lookup on oi using idx_order_item_prod_id_qty_price (ord_item_prod_id=pc.prod_cat_prod_id)  (cost=1 rows=2.44) (actual time=0.0037..0.00483 rows=2.21 loops=200)
```
