# 🧑💲 Top Customers by Total Spending
## SQL Query to Find the top customers by total spending.

```sql
WITH GROUPED_ORDERS AS(
select o.ord_cust_id as customer_ID,  sum(o.ord_total) as total_spending
FROM orders o
group by  o.ord_cust_id)
SELECT CONCAT(c.cust_fname,' ', c.cust_lname) as customer_name, go.total_spending
FROM GROUPED_ORDERS go 
INNER JOIN customer c
on c.cust_id = go.customer_ID;
```

## To view execution time and also run the query
```sql
exlpain analyze WITH GROUPED_ORDERS AS(
select o.ord_cust_id as customer_ID,  sum(o.ord_total) as total_spending
FROM orders o
group by  o.ord_cust_id)
SELECT CONCAT(c.cust_fname,' ', c.cust_lname) as customer_name, go.total_spending
FROM GROUPED_ORDERS go 
INNER JOIN customer c
on c.cust_id = go.customer_ID \G;
```

## Execution Time Before Optimization
```sql
-> Nested loop inner join  (cost=713060 rows=0) (actual time=4885..15314 rows=668236 loops=1)
    -> Table scan on go  (cost=2.5..2.5 rows=0) (actual time=4885..4986 rows=668236 loops=1)
        -> Materialize CTE grouped_orders  (cost=0..0 rows=0) (actual time=4885..4885 rows=668236 loops=1)
            -> Table scan on <temporary>  (actual time=4523..4760 rows=668236 loops=1)
                -> Aggregate using temporary table  (actual time=4523..4523 rows=668235 loops=1)
                    -> Table scan on o  (cost=78223 rows=761904) (actual time=24.5..607 rows=764108 loops=1)
    -> Single-row index lookup on c using PRIMARY (cust_id=go.customer_ID)  (cost=0.936 rows=1) (actual time=0.0152..0.0153 rows=1 loops=668236)
```

## Optimization Technique
### By using index on the ord_cust_id column in the orders table





## Execution Time After Optimization
```sql
-> Nested loop inner join  (cost=1.01e+6 rows=669252) (actual time=667..11349 rows=668236 loops=1)
    -> Table scan on go  (cost=220753..229121 rows=669252) (actual time=667..767 rows=668236 loops=1)
        -> Materialize CTE grouped_orders  (cost=220753..220753 rows=669252) (actual time=667..667 rows=668236 loops=1)
            -> Group aggregate: sum(o.ord_total)  (cost=153828 rows=669252) (actual time=2.48..488 rows=668236 loops=1)
                -> Covering index scan on o using ord_cust_id_and_ord_total_idx  (cost=77637 rows=761904) (actual time=2.47..261 rows=764108 loops=1)
    -> Single-row covering index lookup on c using PRIMARY (cust_id=go.customer_ID)  (cost=0.933 rows=1) (actual time=0.0156..0.0157 rows=1 loops=668236)
```
