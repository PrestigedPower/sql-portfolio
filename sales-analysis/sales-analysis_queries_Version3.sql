-- Useful Queries for Sales Analysis

-- 1. Total sales revenue
SELECT SUM(p.price * s.quantity) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id;

-- 2. Sales by product
SELECT p.product_name, SUM(s.quantity) AS total_sold, SUM(p.price * s.quantity) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- 3. Top customers by revenue
SELECT c.name, SUM(p.price * s.quantity) AS customer_revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.name
ORDER BY customer_revenue DESC
LIMIT 5;

-- 4. Daily sales summary
SELECT sale_date, SUM(p.price * s.quantity) AS daily_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY sale_date
ORDER BY sale_date;