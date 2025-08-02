-- Creating Dummy Orders, Order Items & Sale History to test performance

DELIMITER $$

CREATE PROCEDURE InsertRandomDummyOrders(IN num_orders INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE batch_size INT DEFAULT 1000;
    DECLARE cust_count INT;
    DECLARE prod_count INT;
    DECLARE rand_cust_id INT;
    DECLARE rand_num_items INT;
    DECLARE j INT;
    DECLARE rand_prod_id INT;
    DECLARE rand_qty INT;
    DECLARE item_price NUMERIC(7,2);
    DECLARE total_amount NUMERIC(7,2);
    DECLARE total_discount NUMERIC(7,2);
    DECLARE total_tax NUMERIC(7,2);
    DECLARE shipping NUMERIC(7,2);

    -- Get counts for random selection
    SELECT COUNT(*) INTO cust_count FROM customer;
    SELECT COUNT(*) INTO prod_count FROM product;

    START TRANSACTION;

    WHILE i < num_orders DO
        -- Pick random customer
        SET rand_cust_id = FLOOR(1 + RAND() * cust_count);

        -- Random number of items in this order: 1 to 5
        SET rand_num_items = FLOOR(1 + RAND() * 5);

        SET total_amount = 0;
        SET total_discount = 0;
        SET total_tax = 0;
        SET shipping = ROUND(5 + (RAND() * 15), 2); -- Random shipping

        -- Insert into orders (get ord_id)
        INSERT INTO orders (ord_cust_id, ord_total, ord_discount, ord_tax, ord_shipping)
        VALUES (rand_cust_id, 1, 0, 0, shipping);

        SET @current_ord_id = LAST_INSERT_ID();

        SET j = 0;
        WHILE j < rand_num_items DO
            -- Pick random product
            SET rand_prod_id = FLOOR(1 + RAND() * prod_count);
            SELECT prod_price INTO item_price FROM product WHERE prod_id = rand_prod_id;

            SET rand_qty = FLOOR(1 + RAND() * 5);

            INSERT INTO order_item (
                ord_item_ord_id, ord_item_prod_id, ord_item_qty, 
                ord_item_price, ord_item_discount, ord_item_tax
            )
            VALUES (
                @current_ord_id, rand_prod_id, rand_qty,
                item_price,
                ROUND(item_price * rand_qty * RAND() * 0.1, 2), -- up to 10% discount
                ROUND(item_price * rand_qty * 0.08, 2)          -- 8% tax
            );

            SET total_amount = total_amount + (item_price * rand_qty);
            SET total_discount = total_discount + (item_price * rand_qty * RAND() * 0.1);
            SET total_tax = total_tax + (item_price * rand_qty * 0.08);

            -- Insert into sale_history directly
            INSERT INTO sale_history (
                order_id, customer_id, product_id, total_amount, quantity, order_date
            )
            VALUES (
                @current_ord_id, rand_cust_id, rand_prod_id,
                ROUND(item_price * rand_qty, 2),
                rand_qty,
                NOW()
            );

            SET j = j + 1;
        END WHILE;

        -- Update order total
        UPDATE orders SET
            ord_total = ROUND(total_amount - total_discount + total_tax + shipping, 2),
            ord_discount = ROUND(total_discount, 2),
            ord_tax = ROUND(total_tax, 2)
        WHERE ord_id = @current_ord_id;

        SET i = i + 1;

        -- Optional: Commit every 1000 orders to avoid huge transaction
        IF i % batch_size = 0 THEN
            COMMIT;
            START TRANSACTION;
            SELECT CONCAT('Inserted ', i, ' orders...') AS Status;
        END IF;
    END WHILE;

    COMMIT;
END$$

DELIMITER ;