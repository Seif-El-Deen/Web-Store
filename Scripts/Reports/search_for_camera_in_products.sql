-- * SQL query to search for all products with the word "camera" in either the product name or description.

select * 
from product
where LOWER(prod_name) like '%camera%'
OR LOWER(prod_desc) like '%camera%'
OR LOWER(prod_long_desc) like '%camera%';