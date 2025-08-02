-- Trigger to lock the field (product on hand) quantity with product id = 120 from being updated

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