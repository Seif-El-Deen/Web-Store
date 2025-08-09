# 🛒 E-Commerce Database

A fully structured MySQL database for an e-commerce platform, including:
- **Normalized schema** with categories, products, customers, orders, and order items
- **1 Million products**, **10k Categories**, **3 Million customers** and **5 million orders** (scalable)
- **Triggers, constraints, and transactions** for data integrity
- **Procedures** for creating more data
- **Bulk data generation scripts** for testing and development

Perfect for learning, testing, or as a foundation for an online store.

---
## 📌 Project Structure
- `Diagrams/`: Contains The ERD Diagram
- `Scripts/`: Contains Scripts for 
	- Creating the tables
	- Procedures to insert massive amounts of data into the tables
 	- Report queries
  	- Sample queries to test performance
  	- Triggers to denormalization the data

---
## 🔧 Features

✅ **Normalized Relational Design**  
✅ **Hierarchical Categories** (with self-referencing `category` table)  
✅ **Product-to-Category Mapping** (many-to-many via `product_categories`)  
✅ **Order Management System** with `orders` and `order_items`  
✅ **Data Integrity** via foreign keys, checks, and triggers  
✅ **Row-Level Locking & Transactions** for safe inventory updates  
✅ **Bulk Data Generation** (up to 5M+ orders)  
✅ **Realistic Constraints** (e.g., `ord_ship_date > ord_date`)  
✅ **Error Handling** in stored procedures  

---
## ERD
🔗 [ERD Image](Diagrams/Web%20Store%20ERD.png)

## Entities
-  `Customer`, `Product`, `Category`, `Orders`, `Order Items`
  
## Relationship between entities 
- **`Customer` - `Order`**
  - One-to-many (1:M)  
  ➤ One customer can make many orders.
- **`Orders` - `Order Items`**
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

## Scripts
### 🧱 Tables Creation
- 🔗 [Tables Creation](Scripts/Tables/create_tables.sql)

### 🧱 Procedures
- 🔗 [Inserting Products](Scripts/Procedures/insert_dummy_products.sql)
- 🔗 [Inserting Customers](Scripts/Procedures/insert_dummy_customers.sql)
- 🔗 [Inserting Categories](Scripts/Procedures/insert_dummy_categories.sql)
- 🔗 [Inserting Random Orders](Scripts/Procedures/insert_random_dummy_orders.sql)

### ⚙ Triggers
- 🔗 [Orders Denormalization Trigger (Sale History)](Scripts/Triggers/orders_denormalization.sql)
- 🔗 [Lock product on hand column in products table from being updated](Scripts/Triggers/lock_column_update_in_product_table.sql)

### 📄 Queries
- 📅 [Daily Total Revenue](Scripts/Reports/daily_total_revenue.sql)
- 📈 [Monthly Top Selling](Scripts/Reports/monthly_top_selling.sql)
- 💰 [Custmers spending with more than 500 per month](Scripts/Reports/customers_monthly_spending_with_more_than_500.sql)
- 📷 [Search For Camera in products](Scripts/Reports/search_for_camera_in_products.sql)
- 👷 [Search by Product Author](Scripts/Reports/search_by_product_author.sql)
- 🔒 [Locking a row from being updated](Scripts/Reports/row_locking.sql)
### ⏱️ Optimized Queries
- 📄 [Num. of products per category](Scripts/Reports/num_of_products_per_category.md)
- 📄 [Top customers with total spending](Scripts/Reports/top_customers_with_total_spending.md)
- 📄 [Customers with most recent orders](Scripts/Reports/customers_with_most_recent_orders.sql)
- 📄 [Products with low stock quantity](Scripts/Reports/products_with_low_stock_quantities.md)
- 📄 [Total Revenue for each category](Scripts/Reports/total_revenue_for_each_category.sql)

---
## 🛠️ Tools
- MySQL  Ver 8.0.41
- MySQL Workbench 
