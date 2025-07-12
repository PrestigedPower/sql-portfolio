-- Create a sample table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT NOT NULL,
    salary INTEGER
);

-- Insert sample data
INSERT INTO employees (id, name, department, salary) VALUES
(1, 'Alice', 'Sales', 70000),
(2, 'Bob', 'Engineering', 90000),
(3, 'Carol', 'HR', 60000);

-- Query the table
SELECT * FROM employees;