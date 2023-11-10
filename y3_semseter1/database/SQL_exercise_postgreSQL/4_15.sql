ALTER TABLE ordert
DROP CONSTRAINT IF EXISTS order_fk, -- Drop the existing constraint
ADD CONSTRAINT order_fk_new
FOREIGN KEY (customer_id)
REFERENCES customer(customer_id)
ON DELETE CASCADE;

ALTER TABLE order_line
DROP CONSTRAINT IF EXISTS order_line_fk1, -- Drop the existing constraint
ADD CONSTRAINT order_line_fk1_new
FOREIGN KEY (order_id)
REFERENCES ordert(order_id)
ON DELETE CASCADE;

DELETE FROM ordert
WHERE customer_id = 10001;

DELETE FROM customer
WHERE customer_id = 10001;

SELECT * FROM customer;
SELECT * FROM ordert;
SELECT * FROM order_line;