# 🔢 Total number of products in each category
## SQL Query to Retrieve the total number of products in each category.

```sql
SELECT pc.prod_cat_cat_id, COUNT(*)
FROM product_categories pc
group by pc.prod_cat_cat_id;
```

## To view execution time and also run the query
```sql
explain analyze SELECT pc.prod_cat_cat_id, COUNT(*)
FROM product_categories pc
group by pc.prod_cat_cat_id \G;
```

## Execution Time Before Optimization
```sql
-> Table scan on <temporary>  (actual time=0.17..0.174 rows=45 loops=1)
    -> Aggregate using temporary table  (actual time=0.169..0.169 rows=45 loops=1)
        -> Covering index scan on pc using PRIMARY  (cost=20.2 rows=200) (actual time=0.0554..0.0793 rows=200 loops=1)
```

## Optimization Technique
### By using index on the prod_cat_cat_id column 
```sql
-- Adding an index to improve performance of the query
ALTER TABLE product_categories ADD INDEX fk_prod_cat_cat_id (prod_cat_cat_id);
```

## Execution Time After Optimization

```sql
-> Group aggregate: count(0)  (cost=41 rows=45) (actual time=0.0833..0.141 rows=45 loops=1)
    -> Covering index scan on pc using fk_prod_cat_cat_id  (cost=21 rows=200) (actual time=0.0743..0.113 rows=200 loops=1)
```

✅ Efficient because MySQL scans the index only (covering index).
