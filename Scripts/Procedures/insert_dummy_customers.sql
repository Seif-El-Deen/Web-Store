-- Creating Dummy Customers to test performance

DELIMITER $$

CREATE procedure insertDummyCustomers(IN p_startingCustNum INT, IN p_numOfCustomers INT)
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
    SET @i=p_startingCustNum;
    WHILE @i < p_numOfCustomers+p_startingCustNum DO
		INSERT INTO customer(cust_id,cust_password,cust_email,cust_fname,cust_lname,
							 cust_address1,cust_address2,cust_city,cust_prov,
							 cust_country,cust_postal)
        values(@i,
            CONCAT('Cust Pass.',@i),
            CONCAT('customer',@i,'@dummyemail.com'),
            CONCAT('Cust',@i,'FirstName'),
            CONCAT('Cust',@i,'LastName'),
            CONCAT('Customer - ',@i,' Dummy Address 1'),
            CONCAT('Customer - ',@i,' Dummy Address 2'),
			CONCAT('Customer - ',@i, ' - City'),
			CONCAT('Customer - ',@i, ' - Prov.'),
			CONCAT('Customer - ',@i, ' - Country'),
			'Postal');
		SET @i = @i + 1;
	END WHILE;
    COMMIT;
END $$

DELIMITER $$;
