-- SQL Query to Find the top customers by total spending.

select CONCAT(c.cust_fname,' ', c.cust_lname) as customer_name,  sum(o.ord_total) as total_spending
FROM customer c
inner join orders o
on c.cust_id = o.ord_cust_id
-- where c.cust_id <=500000 -- to limit for only 500 k users
group by  CONCAT(c.cust_fname,' ', c.cust_lname)
order by 2 desc;