-- SQL Query to List products that have low stock quantities of less than 10 quantities.

select p.*
from product p
where p.prod_on_hand<10;
