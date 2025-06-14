-- SET SQL_SAFE_UPDATES = 0;

-- drop table order_details;
-- drop table orders;
-- drop table products;
-- drop table categories;

-- CREATE TABLE categories(
-- category_id int auto_increment primary key,
-- category_name varchar(255) unique not null
-- );


-- CREATE TABLE products(
-- product_id int auto_increment primary key,
-- category_id int,
-- product_name varchar(255) unique not null,
-- description varchar(255),
-- price DECIMAL(10,2) not null check(price>0),
-- stock_quantity int not null check(stock_quantity>=0),
-- CONSTRAINT fk_categories foreign key (category_id) references categories(category_id)
-- );


-- CREATE TABLE customers(
-- customer_id int auto_increment primary key,
-- first_name varchar(50) not null,
-- last_name varchar(50) not null,
-- email varchar(255) unique not null,
-- password varchar(50) not null
-- );

-- CREATE TABLE orders(
-- order_id int auto_increment primary key,
-- customer_id int,
-- order_date timestamp default current_timestamp,
-- total_amount decimal(10,2) check(total_amount>0),
-- constraint fk_customers foreign key(customer_id) references customers(customer_id)
-- );

-- CREATE TABLE order_details(
-- order_detail_id int auto_increment primary key,
-- order_id int,
-- product_id int,
-- quantity int check(quantity>0),
-- unit_price decimal(10,2),
-- constraint fk_orders foreign key(order_id) references orders(order_id),
-- constraint fk_products foreign key (product_id) references products(product_id)
-- );




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





