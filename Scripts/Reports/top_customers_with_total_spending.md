# 🧑💲 SQL Query to Find the top customers by total spending.

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

```sql
-> Nested loop inner join  (cost=738931 rows=0) (actual time=4289..12829 rows=668236 loops=1)
    -> Table scan on go  (cost=2.5..2.5 rows=0) (actual time=4289..4384 rows=668236 loops=1)
        -> Materialize CTE grouped_orders  (cost=0..0 rows=0) (actual time=4289..4289 rows=668236 loops=1)
            -> Table scan on <temporary>  (actual time=3952..4176 rows=668236 loops=1)
                -> Aggregate using temporary table  (actual time=3952..3952 rows=668235 loops=1)
                    -> Table scan on o  (cost=76807 rows=761904) (actual time=2.75..337 rows=764108 loops=1)
    -> Single-row index lookup on c using PRIMARY (cust_id=go.customer_ID)  (cost=0.97 rows=1) (actual time=0.0124..0.0125 rows=1 loops=668236)
```
