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
where LOWER(prod_name) like '%camera%'
OR LOWER(prod_desc) like '%camera%';
```

### A query to suggest popular products in the same category for the same author, excluding the Purchsed product from the recommendations.(= Suppose we have a created by column refering to the author)
``` sql
SELECT distinct p.* 
FROM products p
LEFT JOIN product_categories pc
ON pc.prod_cat_prod_id = p.prod_id
-- AND pc.prod_cat_detault = 'Y'
WHERE p.prod_id != 5
AND pc.prod_cat_cat_id IN (select pc2.prod_cat_cat_id from product_categories pc2 where pc2.prod_cat_prod_id = 5)
AND p.created_by = (select p1.created_by from products p1 where p1.prod_id = 5)
```

### Trigger to lock the field (product on hand) quantity with product id = 120 from being updated
``` sql
DELIMITER $$

CREATE TRIGGER trg_block_prod_on_hand_update
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  IF OLD.prod_id = 120 AND NEW.prod_on_hand <> OLD.prod_on_hand THEN
	  SIGNAL SQLSTATE '45000'
	  SET MESSAGE_TEXT = 'Update not allowed: prod_on_hand is locked for product ID 120';
  END IF;
END$$

DELIMITER ;
```

### Trigger to lock row with product id = 120 from being updated
``` sql
DELIMITER $$

CREATE TRIGGER trg_block_prod_on_hand_update
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  IF OLD.prod_id = 120 THEN
	  SIGNAL SQLSTATE '45000'
	  SET MESSAGE_TEXT = 'Update not allowed: For product ID 120';
  END IF;
END$$

DELIMITER ;
```
