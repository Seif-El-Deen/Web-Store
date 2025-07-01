# Web-Store

## ERD
![Web Store ERD!](https://raw.githubusercontent.com/Seif-El-Deen/Web-Store/refs/heads/main/Diagrams/Web%20Store%20ERD.png)

## Reporting Queries

### SQL query to generate a daily report of the total revenue for a specific date.
```sql
 select sum(total_amount)
 from orders
 where DATE_FORMAT(order_date,'%y-%m-%d') = DATE_FORMAT('2024-07-25','%y-%m-%d');
 select DATE_FORMAT(order_date,'%d-%m-%y'), sum(total_amount) 
 from orders GROUP BY DATE_FORMAT(order_date,'%d-%m-%y')
 ORDER BY 1;
```
 ### SQL query to generate a monthly report of the top-selling products in a given month.
``` sql
select p.product_id, p.product_name, sum(od.quantity) 
from products p
left join order_details od 
on p.product_id = od.product_id
left join orders o
on od.order_id = o.order_id
and DATE_FORMAT(o.order_date,'%y-%m') = DATE_FORMAT('2025-06','%y-%m')
group by p.product_id, p.product_name
order by 3 desc;
```

### SQL query to retrieve a list of customers who have placed orders totaling more than $500 in the past month. Include customer names and their total order amounts. [Complex query].
``` sql
select CONCAT(c.first_name, ' ', c.last_name) 'Customer Name', DATE_FORMAT(o.order_date,'%y-%m') 'Year- Month', sum(o.total_amount) 'Total Amount'
from customers c
inner join orders o
ON c.customer_id = o.customer_id
-- and DATE_FORMAT(o.order_date,'%y-%m') = DATE_FORMAT('2024-06','%y-%m')
group by CONCAT(c.first_name, ' ', c.last_name), DATE_FORMAT(o.order_date,'%y-%m')
having sum(o.total_amount) > 500;
```

### SQL query to search for all products with the word "camera" in either the product name or description.

``` sql
select * 
from products
where LOWER(product_name) like '%camera%'
OR LOWER(description) like '%camera%';
```

### 
