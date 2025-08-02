-- Creating Dummy Categories to test performance

DELIMITER $$

CREATE procedure insertDummyCategories(IN p_startingCatNum INT, IN p_numOfCategories INT)
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
    SET @i=p_startingCatNum;
    WHILE @i < p_numOfCategories+p_startingCatNum DO
		INSERT INTO category(cat_id, cat_name, cat_desc, cat_parent_id)
        values(@i,
			CONCAT('Category - ',@i),
            CONCAT('DESCRIPTION FOR THE CATEGORY NUMBER ',@i),
            case  when @i > 100 then ROUND(1+RAND()*100)else null end);
		SET @i = @i + 1;
	END WHILE;
    COMMIT;
END $$

DELIMITER ;
