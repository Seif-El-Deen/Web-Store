-- SQL Query to Find the top customers by total spending.

WITH GROUPED_ORDERS AS(
select o.ord_cust_id as customer_ID,  sum(o.ord_total) as total_spending
FROM orders o
group by  o.ord_cust_id)
SELECT CONCAT(c.cust_fname,' ', c.cust_lname) as customer_name, go.total_spending
FROM GROUPED_ORDERS go 
INNER JOIN customer c
on c.cust_id = go.customer_ID;
