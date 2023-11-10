-- Creation of customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

-- Creation of orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_id INT REFERENCES customers(customer_id)
);

-- Creation of order_details table
CREATE TABLE order_details (
    detail_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_name VARCHAR(255),
    quantity INT
);

-- Insert some data into customers
INSERT INTO customers (name, email) VALUES
('John Doe', 'john.doe@example.com'),
('Jane Smith', 'jane.smith@example.com');

-- Insert some data into orders
INSERT INTO orders (order_date, customer_id) VALUES
('2023-01-01', 1),
('2023-01-02', 2);

-- Insert some data into order_details
INSERT INTO order_details (order_id, product_name, quantity) VALUES
(1, 'Laptop', 1),
(1, 'Mouse', 2),
(2, 'Keyboard', 1);

-- Query to join customers with their order details
SELECT
    c.customer_id,
    c.name,
    od.detail_id,
    od.product_name,
    od.quantity
FROM
    customers c
JOIN
    orders o ON c.customer_id = o.customer_id
JOIN
    order_details od ON o.order_id = od.order_id
ORDER BY
    c.customer_id, od.detail_id;
