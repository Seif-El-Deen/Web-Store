-- Transaction query to lock product with product id 120 from being updated.
START TRANSACTION;

-- Lock the row to prevent updates from other transactions
SELECT * FROM products
WHERE prod_id = 120
FOR UPDATE;

-- You can do your business logic here (e.g., read or update other fields)

-- Commit or rollback to release the lock
COMMIT;