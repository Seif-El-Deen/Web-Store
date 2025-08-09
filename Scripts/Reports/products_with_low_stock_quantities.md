# Products with low stock quantities
## SQL Query to List products that have low stock quantities of less than 10 quantities
```sql
select p.prod_id
from product p
where p.prod_on_hand<10;
```
## Execution Time Before Optimization
```sql

```

## Optimization Technique
### By adding a covering index on the the product id and stock quantity
```sql
ALTER TABLE product ADD INDEX prod_id_and_prod_on_hand_idx (prod_id, prod_on_hand);
```

## Execution Time After Optimization

```sql
-> Filter: (p.prod_on_hand < 10)  (cost=115783 rows=315647) (actual time=8.35..595 rows=85301 loops=1)
    -> Covering index scan on p using prod_id_and_prod_on_hand_idx  (cost=115783 rows=947035) (actual time=8.34..518 rows=1e+6 loops=1)
```
