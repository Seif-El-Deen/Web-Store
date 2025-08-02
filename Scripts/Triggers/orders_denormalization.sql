DELIMITER $$

CREATE TRIGGER trg_sale_history
AFTER INSERT ON ORDERS
FOR EACH ROW 
BEGIN 
	INSERT INTO sale_history(order_id, customer_id, product_id, total_amount, quantity, order_date)
    SELECT NEW.ord_id, NEW.ord_cust_id, oi.ord_item_prod_id, oi.ord_item_qty*oi.ord_item_price, oi.ord_item_qty, NEW.ord_date
    FROM order_item oi where oi.ord_item_ord_id = New.ord_id;
    
END$$

DELIMITER ;