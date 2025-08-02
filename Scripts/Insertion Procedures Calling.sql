-- CALL insertDummyProducts(1,100000);
-- CALL insertDummyProducts(100001,100000);
-- CALL insertDummyProducts(200001,100000);
-- CALL insertDummyProducts(300001,100000);
-- CALL insertDummyProducts(400001,100000);
-- CALL insertDummyProducts(500001,100000);
-- CALL insertDummyProducts(600001,100000);
-- CALL insertDummyProducts(700001,100000);
-- CALL insertDummyProducts(800001,100000);
-- CALL insertDummyProducts(900001,100000);


-- CALL insertDummyCustomers(1,100000);
-- CALL insertDummyCustomers(100001,100000);
-- CALL insertDummyCustomers(200001,100000);
-- CALL insertDummyCustomers(300001,100000);
-- CALL insertDummyCustomers(400001,100000);
-- CALL insertDummyCustomers(500001,100000);
-- CALL insertDummyCustomers(600001,100000);
-- CALL insertDummyCustomers(700001,100000);
-- CALL insertDummyCustomers(800001,100000);
-- CALL insertDummyCustomers(900001,100000);
-- CALL insertDummyCustomers(1000001,100000);
-- CALL insertDummyCustomers(1100001,100000);
-- CALL insertDummyCustomers(1200001,100000);
-- CALL insertDummyCustomers(1300001,100000);
-- CALL insertDummyCustomers(1400001,100000);
-- CALL insertDummyCustomers(1500001,100000);
-- CALL insertDummyCustomers(1600001,100000);
-- CALL insertDummyCustomers(1700001,100000);
-- CALL insertDummyCustomers(1800001,100000);
-- CALL insertDummyCustomers(1900001,100000);
-- CALL insertDummyCustomers(2000001,100000);
-- CALL insertDummyCustomers(2100001,100000);
-- CALL insertDummyCustomers(2200001,100000);
-- CALL insertDummyCustomers(2300001,100000);
-- CALL insertDummyCustomers(2400001,100000);
-- CALL insertDummyCustomers(2500001,100000);
-- CALL insertDummyCustomers(2600001,100000);
-- CALL insertDummyCustomers(2700001,100000);
-- CALL insertDummyCustomers(2800001,100000);
-- CALL insertDummyCustomers(2900001,100000);

-- CALL insertDummyCategories(1,10000);



-- SET SQL_SAFE_UPDATES = 0;

-- DELETE FROM PRODUCT ;

-- drop procedure if exists insertDummyCustomers;


--------------------------------------------------

SET SQL_SAFE_UPDATES = 0;
-- DELETE FROM ORDER_ITEMS;
-- DELETE FROM ORDERS WHERE 1=1;
-- DELETE FROM ORDER_ITEM WHERE 1=1;
-- DELETE FROM sale_history WHERE 1=1;

-- update product 
-- set prod_price = prod_price / 100;
-- COMMIT;

-- SELECT COUNT(*) FROM ORDERS;
-- SELECT * FROM ORDERS;
-- SHOW FULL PROCESSLIST;

CALL InsertRandomDummyOrders(100000);


-- drop trigger if exists trg_sale_history;

-- drop procedure if exists InsertRandomDummyOrders;
-- -- SELECT COUNT(*) FROM ORDERS;
-- -- SELECT * FROM ORDERS;