-- Create table
CREATE TABLE sales (
    product TEXT,
    price REAL,
    quantity INTEGER,
    city TEXT
);

-- Insert data
INSERT INTO sales VALUES
('Milk', 2.5, 10, 'London'),
('Bread', 1.5, 20, 'London'),
('Eggs', 3.0, 15, 'Manchester'),
('Apple', 0.5, 50, 'London'),
('Chicken', 5.0, 8, 'Birmingham');

-- View all data
SELECT * FROM sales;

-- Filter by city
SELECT * FROM sales
WHERE city = 'London';

-- Calculate total sales
SELECT product,
       price * quantity AS total_sales
FROM sales;

-- Total sales by product
SELECT product,
       SUM(price * quantity) AS total_sales
FROM sales
GROUP BY product;

-- Total sales by city
SELECT city,
       SUM(price * quantity) AS total_sales
FROM sales
GROUP BY city;

-- Top product
SELECT product,
       SUM(price * quantity) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC
LIMIT 1;

-- Lowest performing city
SELECT city,
       SUM(price * quantity) AS total_sales
FROM sales
GROUP BY city
ORDER BY total_sales ASC
LIMIT 1;
