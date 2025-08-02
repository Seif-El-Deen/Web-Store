-- SQL query to generate a monthly report of the top-selling products in a given month.
select p.product_id, p.product_name, sum(od.quantity) 
from products p
left join order_details od 
on p.product_id = od.product_id
left join orders o
on od.order_id = o.order_id
and DATE_FORMAT(o.order_date,'%y-%m') = DATE_FORMAT('2025-06','%y-%m')
group by p.product_id, p.product_name
order by 3 desc;