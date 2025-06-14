-- CREATE TABLE categories(
-- category_id int auto_increment primary key,
-- category_name varchar(255) not null
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


-- select sum(total_amount) from orders where order_date = :p_date


-- select p.product_id, p.name, sum(od.quantity) 
-- from products p
-- left join order_details od 
-- on p.product_id = od.product_id
-- left join orders o
-- on od.order_id = o.order_id
-- and to_char(od.order_date,'mm') = :pmonth
-- group by p.product_id, p.name
-- order by 2 desc;


-- select c.first_name ||' '|| c.last_name, sum(od.total_amount) 'Total Amount'
-- from customers c
-- left join order_details od
-- on c.customer_id = od.customer_id 
-- and to_char(od.order_date,'mm') = :p_month
-- group by c.first_name, c.last_name
-- having sum(od.total_amount) > 500



