# 🛒 E-Commerce Database

A fully structured MySQL database for an e-commerce platform, including:
- **Normalized schema** with categories, products, customers, orders, and order items
- **1 Million products**, **10k Categories**, **3 Million customers** and **5 million orders** (scalable)
- **Triggers, constraints, and transactions** for data integrity
- **Procedures** for creating more data
- **Bulk data generation scripts** for testing and development

Perfect for learning, testing, or as a foundation for an online store.

---

## 📁 Table of Contents

- ### 🔧 Features

✅ **Normalized Relational Design**  
✅ **Hierarchical Categories** (with self-referencing `categories` table)  
✅ **Product-to-Category Mapping** (many-to-many via `product_categories`)  
✅ **Order Management System** with `orders` and `order_items`  
✅ **Data Integrity** via foreign keys, checks, and triggers  
✅ **Row-Level Locking & Transactions** for safe inventory updates  
✅ **Bulk Data Generation** (up to 5M+ orders)  
✅ **Realistic Constraints** (e.g., `ord_ship_date > ord_date`)  
✅ **Error Handling** in stored procedures  
- [📊 Database Schema](#-database-schema)
- [🚀 How to Use](#-how-to-use)
- [🎯 Sample Data Included](#-sample-data-included)
- [🧩 Key Concepts Demonstrated](#-key-concepts-demonstrated)
- [🛠 Troubleshooting](#-troubleshooting)
- [📜 License](#-license)

---



---

## 📊 Database Schema

### Tables
| Table | Description |
|------|-------------|
| `categories` | Hierarchical product categories (e.g., Electronics → Phones → Smartphones) |
| `products` | Product details (price, weight, stock, etc.) |
| `product_categories` | Many-to-many link between products and categories |
| `customers` | Customer information |
| `orders` | Order headers (total, date, shipping, etc.) |
| `order_items` | Line items for each order |
| `temp_orders` (optional) | Temporary table for safe data processing |

> 📂 **ER Diagram**: [Include a screenshot or link to your diagram here]

---


## ERD
<img src="https://raw.githubusercontent.com/Seif-El-Deen/Web-Store/refs/heads/main/Diagrams/Web%20Store%20ERD.png " width="600" height="450" alt="E-Commerce ERD" />

## Entities
-  `Customer`, `Product`, `Category`, `Order`, `Order Items`
  
## Relationship between entities 
- **`Customer` - `Order`**
  - One-to-many (1:M)  
  ➤ One customer can make many orders.
- **`Order` - `Order Items`**
  - One-to-many (1:M)  
  ➤ One Order can have many order items.
- **`Product` - `Order Items`**
  - One-to-many (1:M)  
  ➤ One Product can exist in many order items.
- **`Product` - `Category`**
  - Many-to-many (M:M)  
  ➤ One Product can belong to many categories & a single category can include many products.
- **`Category` - `Category`**
  - One-to-many (1:M)  
  ➤ One Category can be parent to many other categories.

## MySql Scripts
### 🧱 Tables Creation
🔗 [Tables Creation](Scripts/Tables%20Creation.sql)


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

### Trigger to create sale history, when a new order is made in the 'Orders' table, automatically generates a sale history record for that order, capturing details such as (order_id, customer_id, product_id, total_amount, quantity, order_date), After order insertion.
``` sql
DELIMITER $$

CREATE TRIGGER trg_sale_history
AFTER INSERT ON ORDERS
FOR EACH ROW 
BEGIN 
	INSERT INTO sale_history(order_id, customer_id, product_id, total_amount, quantity, order_date)
    SELECT NEW.ord_id, NEW.ord_cust_id, oi.ord_item_prod_id, oi.ord_item_qty*oi.ord_item_price, oi.ord_item_qty, NEW.ord_date
    FROM order_items oi where oi.ord_item_ord_id = New.ord_id;
    
END$$

DELIMITER ;
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

### Transaction query to lock product with product id 120 from being updated.
``` sql
START TRANSACTION;

-- Lock the row to prevent updates from other transactions
SELECT * FROM products
WHERE prod_id = 120
FOR UPDATE;

-- You can do your business logic here (e.g., read or update other fields)

-- Commit or rollback to release the lock
COMMIT;
```
