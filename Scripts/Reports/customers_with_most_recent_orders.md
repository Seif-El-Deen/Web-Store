# Customers with most recent orders
## SQL Query to Retrieve the most recent orders with customer information with 1000 orders
```sql
select CONCAT(c.cust_fname,' ', c.cust_lname) customer_name, o.ord_id order_id, o.ord_date order_date
FROM customer c
inner join orders o
on c.cust_id = o.ord_cust_id
order by o.ord_date desc
limit 1000;
```

## Execution Time Before Optimization
```sql
-> Limit: 1000 row(s)  (cost=903366 rows=1000) (actual time=923..1374 rows=1000 loops=1)
    -> Nested loop inner join  (cost=903366 rows=761904) (actual time=923..1374 rows=1000 loops=1)
        -> Sort: o.ord_date DESC  (cost=78658 rows=761904) (actual time=921..922 rows=1000 loops=1)
            -> Table scan on o  (cost=78658 rows=761904) (actual time=14.8..566 rows=764108 loops=1)
        -> Single-row index lookup on c using PRIMARY (cust_id=o.ord_cust_id)  (cost=0.982 rows=1) (actual time=0.451..0.451 rows=1 loops=1000)
```

## Optimization Technique
### By using index on the order date column in the orders table
```sql
ALTER TABLE orders ADD INDEX ord_date_idx (ord_date);
```

## Execution Time After Optimization
```sql
-> Limit: 1000 row(s)  (cost=743090 rows=1000) (actual time=10.4..53.4 rows=1000 loops=1)
    -> Nested loop inner join  (cost=743090 rows=1000) (actual time=10.4..53.3 rows=1000 loops=1)
        -> Index scan on o using ord_date_idx (reverse)  (cost=2.32 rows=1000) (actual time=9.67..12.8 rows=1000 loops=1)
        -> Single-row index lookup on c using PRIMARY (cust_id=o.ord_cust_id)  (cost=0.975 rows=1) (actual time=0.0402..0.0403 rows=1 loops=1000)
```
