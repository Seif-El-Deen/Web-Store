--  * Write a SQL query to retrieve a list of customers who have placed orders totaling more than $500 in the past month. 
--   Include customer names and their total order amounts.

select CONCAT(c.cust_fname, ' ', c.cust_lname) 'Customer Name', DATE_FORMAT(o.ord_date,'%y-%m') 'Year- Month', sum(o.ord_total) 'Total Amount'
from customer c
inner join orders o
ON c.cust_id = o.ord_cust_id
-- and DATE_FORMAT(o.order_date,'%y-%m') = DATE_FORMAT('2024-06','%y-%m')
group by CONCAT(c.cust_fname, ' ', c.cust_lname), DATE_FORMAT(o.ord_date,'%y-%m')
having sum(o.ord_total) > 500;