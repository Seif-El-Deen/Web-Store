
--  * Write an SQL query to generate a daily report of the total revenue for a specific date.
--  select sum(total_amount) from orders where DATE_FORMAT(order_date,'%y-%m-%d') = DATE_FORMAT('2024-07-25','%y-%m-%d');
--  select DATE_FORMAT(order_date,'%d-%m-%y'), sum(total_amount) 
--  from orders GROUP BY DATE_FORMAT(order_date,'%d-%m-%y')
--  ORDER BY 1;

--------------------------------------------------------------------
--  * Write an SQL query to generate a monthly report of the top-selling products in a given month.
-- select p.product_id, p.product_name, sum(od.quantity) 
-- from products p
-- left join order_details od 
-- on p.product_id = od.product_id
-- left join orders o
-- on od.order_id = o.order_id
-- and DATE_FORMAT(o.order_date,'%y-%m') = DATE_FORMAT('2025-06','%y-%m')
-- group by p.product_id, p.product_name
-- order by 3 desc;

----------------------------------------------------------------------------------------------------
--  * Write a SQL query to retrieve a list of customers who have placed orders totaling more than $500 in the past month. 
--   Include customer names and their total order amounts. [Complex query].
-- select * from orders;
-- select * from customers;

-- select CONCAT(c.first_name, ' ', c.last_name) 'Customer Name', DATE_FORMAT(o.order_date,'%y-%m') 'Year- Month', sum(o.total_amount) 'Total Amount'
-- from customers c
-- inner join orders o
-- ON c.customer_id = o.customer_id
-- -- and DATE_FORMAT(o.order_date,'%y-%m') = DATE_FORMAT('2024-06','%y-%m')
-- group by CONCAT(c.first_name, ' ', c.last_name), DATE_FORMAT(o.order_date,'%y-%m')
-- having sum(o.total_amount) > 500;

-- * Write a SQL query to search for all products with the word "camera" in either the product name or description.

-- select * 
-- from product
-- where LOWER(prod_name) like '%camera%'
-- OR LOWER(prod_desc) like '%camera%'
-- OR LOWER(prod_long_desc) like '%camera%';


-- * Can you design a query to suggest popular products in the same category for the same author, 
--   excluding the Purchsed product from the recommendations?

-- SELECT distinct p.* 
-- FROM products p
-- LEFT JOIN product_categories pc
-- ON pc.prod_cat_prod_id = p.prod_id
-- -- AND pc.prod_cat_detault = 'Y'
-- WHERE p.prod_id != 5
-- AND pc.prod_cat_cat_id IN (select pc2.prod_cat_cat_id from product_categories pc2 where pc2.prod_cat_prod_id = 5)
-- AND p.created_by = (select p1.created_by from products p1 where p1.prod_id = 5)


-- DELIMITER $$

-- CREATE TRIGGER trg_block_prod_on_hand_update
-- BEFORE UPDATE ON products
-- FOR EACH ROW
-- BEGIN
--   IF OLD.prod_id = 120 AND NEW.prod_on_hand <> OLD.prod_on_hand THEN
-- 	  SIGNAL SQLSTATE '45000'
-- 	  SET MESSAGE_TEXT = 'Update not allowed: prod_on_hand is locked for product ID 120';
--   END IF;
-- END$$

-- DELIMITER ;


-- DELIMITER $$

-- CREATE TRIGGER trg_sale_history
-- AFTER INSERT ON ORDERS
-- FOR EACH ROW 
-- BEGIN 
-- 	INSERT INTO sale_history(order_id, customer_id, product_id, total_amount, quantity, order_date)
--     SELECT NEW.ord_id, NEW.ord_cust_id, oi.ord_item_prod_id, oi.ord_item_qty*oi.ord_item_price, oi.ord_item_qty, NEW.ord_date
--     FROM order_item oi where oi.ord_item_ord_id = New.ord_id;
--     
-- END$$

-- DELIMITER ;


-- START TRANSACTION;

-- -- Lock the row to prevent updates from other transactions
-- SELECT * FROM products
-- WHERE prod_id = 120
-- FOR UPDATE;

-- -- You can do your business logic here (e.g., read or update other fields)

-- -- Commit or rollback to release the lock
-- COMMIT;


-- 5. Write SQL Query to Retrieve the total number of products in each category.

SELECT c.cat_name, COUNT(*)
FROM category c
LEFT JOIN product_categories pc
on c.cat_id = pc.prod_cat_cat_id
group by c.cat_id;

-- 6. Write SQL Query to Find the top customers by total spending.

select CONCAT(c.cust_fname,' ', c.cust_lname),  sum(o.ord_total)
FROM customer c
inner join orders o
on c.cust_id = o.ord_cust_id
where c.cust_id <=500000 -- to limit for only 500 k users
group by c.cust_id
order by 2 desc;


-- 7. Write SQL Query to Retrieve the most recent orders with customer information with 1000 orders.

select CONCAT(c.cust_fname,' ', c.cust_lname), o.ord_id, o.ord_date
FROM customer c
inner join orders o
on c.cust_id = o.ord_cust_id
order by o.ord_date desc
limit 1000;


-- 8. Write SQL Query to List products that have low stock quantities of less than 10 quantities.
select p.*
from product p
where p.prod_on_hand<10;


-- 9. Write SQL Query to Calculate the revenue generated from each product category.

select c.cat_name, SUM(oi.ord_item_qty * oi.ord_item_price)
from category c
inner join product_categories pc
on c.cat_id = pc.prod_cat_cat_id
inner join order_item oi
on pc.prod_cat_prod_id = oi.ord_item_prod_id
group by c.cat_name;


