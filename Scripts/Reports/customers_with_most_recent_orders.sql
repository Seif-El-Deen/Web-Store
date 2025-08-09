-- SQL Query to Retrieve the most recent orders with customer information with 1000 orders.

select CONCAT(c.cust_fname,' ', c.cust_lname) customer_name, o.ord_id order_id, o.ord_date order_date
FROM customer c
inner join orders o
on c.cust_id = o.ord_cust_id
order by o.ord_date desc
limit 1000;