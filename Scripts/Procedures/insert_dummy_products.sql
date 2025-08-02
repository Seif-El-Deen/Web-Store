-- Creating Dummy Products for testing performance

DELIMITER $$

CREATE procedure insertDummyProducts(IN p_startingProdNum INT, IN p_numOfProducts INT)
BEGIN 
	DECLARE EXIT HANDLER FOR sqlexception
		BEGIN
            -- Get detailed error info
			GET DIAGNOSTICS CONDITION 1
			  @sqlstate = RETURNED_SQLSTATE,
			  @errno = MYSQL_ERRNO,
			  @text = MESSAGE_TEXT;

			-- Output the error
			SELECT 
			  'An error occurred during execution' AS ErrorMessage,
			  @errno AS ErrorCode,
			  @sqlstate AS SQL_State,
			  @text AS ErrorDescription;
			ROLLBACK; -- Rollback if any error occurs
        END;

	START TRANSACTION;
    SET @i=p_startingProdNum;
    WHILE @i < p_numOfProducts+p_startingProdNum DO
		INSERT INTO PRODUCT
        (prod_id, prod_name, prod_desc, prod_long_desc, prod_size,
         prod_weight, prod_price, prod_on_hand, prod_comments, prod_image,
         prod_discount, prod_ship_cost)
        values(@i,
			CONCAT('Product',@i),
			CONCAT('Product',@i,' Description, with some long dummy data to be added in the description'),
			CONCAT('Product',@i,' Description, with longerrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr description'),
			'M',
			FLOOR(1 + RAND() * 5000),
			ROUND(10 + RAND() * 100, 2),
			ROUND(1 + RAND() * 100),
			CONCAT('Dummy Comment for product ',@i),
			'Dummy url should be here for all images',
			FLOOR(0 + RAND() * 100),
			FLOOR(1 + RAND() * 300)
		);
		SET @i = @i + 1;
	END WHILE;
    COMMIT;
END $$

DELIMITER;
