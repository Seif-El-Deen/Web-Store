# Products with low stock quantities
## SQL Query to List products that have low stock quantities of less than 10 quantities
```sql
select p.prod_id
from product p
where p.prod_on_hand<10;
```
## Execution Time Before Optimization
```sql
-> Filter: (p.prod_on_hand < 10)  (cost=115748 rows=315647) (actual time=0.053..1753 rows=85301 loops=1)
    -> Table scan on p  (cost=115748 rows=947035) (actual time=0.049..1676 rows=1e+6 loops=1)
```

## Optimization Technique
### By adding a covering index on the the product id and stock quantity
```sql
ALTER TABLE product ADD INDEX prod_on_hand_idx (prod_on_hand);
```

## Execution Time After Optimization

```sql
-> Filter: (p.prod_on_hand < 10)  (cost=34702 rows=172870) (actual time=0.0457..44.9 rows=85301 loops=1)
    -> Covering index range scan on p using prod_on_hand_idx over (prod_on_hand < 10)  (cost=34702 rows=172870) (actual time=0.0441..38.8 rows=85301 loops=1)
```
