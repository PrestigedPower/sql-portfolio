-- Sample Data for Sales Analysis

-- Customers
INSERT INTO customers (customer_id, name, email) VALUES
(1, 'Alice Johnson', 'alice@example.com'),
(2, 'Bob Smith', 'bob@example.com'),
(3, 'Carol Lee', 'carol@example.com');

-- Products
INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Smartphone', 'Electronics', 800.00),
(3, 'Desk Chair', 'Furniture', 150.00);

-- Sales
INSERT INTO sales (sale_id, customer_id, product_id, quantity, sale_date) VALUES
(1, 1, 1, 1, '2025-07-01'),
(2, 2, 2, 2, '2025-07-02'),
(3, 3, 3, 1, '2025-07-03'),
(4, 1, 2, 1, '2025-07-04'),
(5, 2, 3, 3, '2025-07-05');