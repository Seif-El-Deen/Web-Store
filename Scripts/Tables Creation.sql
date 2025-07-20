create table products(
prod_id int auto_increment primary key,
prod_name varchar(100) not null,
prod_desc varchar(500),
prod_long_desc varchar(2000),
prod_size varchar(10),
prod_weight smallint,
prod_price numeric(7,2) not null,
prod_on_hand smallint not null,
prod_comments varchar(1000),
prod_image varchar(100),
prod_discount numeric(7,2) not null,
prod_ship_cost numeric(7,2) not null
);

create table categories(
cat_id int auto_increment primary key,
cat_name varchar(100) not null,
cat_desc varchar(1000),
cat_parent_id int,
CONSTRAINT fk_categories_parent foreign key (cat_parent_id) references categories(cat_id)
);

create table product_categories(
prod_cat_prod_id int not null,
prod_cat_cat_id int not null,
prod_cat_detault char(1)  default 'N',
primary key (prod_cat_prod_id, prod_cat_cat_id),
constraint fk_prod_cat_prod_id foreign key (prod_cat_prod_id) references products(prod_id),
constraint fk_prod_cat_cat_id foreign key (prod_cat_cat_id) references categories(cat_id)
);

create table customers(
cust_id int auto_increment primary key,
cust_password varchar(20) not null,
cust_email varchar(100) not null unique,
cust_fname varchar(50),
cust_lname varchar(50),
cust_address1 varchar(100),
cust_address2 varchar(100),
cust_city varchar(100),
cust_prov varchar(100),
cust_country varchar(50),
cust_postal varchar(10)
);

create table orders(
ord_id int auto_increment primary key,
ord_cust_id int not null,
ord_total numeric(7,2) not null check(ord_total>0),
ord_discount numeric(7,2) not null check(ord_discount>=0),
ord_tax numeric(7,2) not null check(ord_tax>=0),
ord_shipping numeric(7,2) not null,
ord_date datetime not null default current_timestamp,
ord_ship_date datetime,
constraint fk_orders_customer_id foreign key (ord_cust_id) references customers(cust_id)
);

create table order_items(
ord_item_id int auto_increment primary key,
ord_item_ord_id int not null,
ord_item_prod_id int not null,
ord_item_qty smallint not null check(ord_item_qty>0),
ord_item_price numeric(7,2) not null check(ord_item_price>0),
ord_item_discount numeric(7,2) not null check(ord_item_discount>=0),
ord_item_tax numeric(7,2) not null check(ord_item_tax>=0),
-- ord_item_shipping numeric(7,2) not null,
constraint fk_ord_items_ord_id foreign key (ord_item_ord_id) references orders(ord_id),
constraint fk_ord_items_prod_id foreign key (ord_item_prod_id) references products(prod_id),
constraint uq_ord_items_order_product unique(ord_item_ord_id, ord_item_prod_id)
);

create table sale_history(
	sale_history_id int auto_increment primary key,
    order_id int not null,
    customer_id int not null,
    product_id int not null,
    total_amount int not null,
    quantity numeric(7,2) not null,
	order_date datetime not null,
    constraint fk_sale_history_ord_id foreign key(order_id) references orders(ord_id),
    constraint fk_sale_history_cust_id foreign key(customer_id) references customers(cust_id),
    constraint fk_sale_history_prod_id foreign key(product_id) references products(prod_id)
);

