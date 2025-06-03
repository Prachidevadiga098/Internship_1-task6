
-- Drop table if it already exists to avoid duplicate primary key errors
DROP TABLE IF EXISTS online_sales;

-- Create table
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Insert sample data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 250.00, 101),
(2, '2023-01-20', 400.00, 103),
(3, '2023-02-05', 150.00, 102),
(4, '2023-02-25', 500.00, 101),
(5, '2023-03-10', 200.00, 104),
(6, '2023-03-12', 300.00, 105),
(7, '2023-04-18', 180.00, 101),
(8, '2023-05-01', 220.00, 106),
(9, '2023-05-21', 310.00, 102),
(10, '2023-06-11', 280.00, 103);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(11, '2023-07-03', 320.00, 107),
(12, '2023-07-15', 210.00, 108),
(13, '2023-08-05', 450.00, 101),
(14, '2023-08-25', 390.00, 109),
(15, '2023-09-10', 275.00, 110),
(16, '2023-09-22', 330.00, 102),
(17, '2023-10-01', 190.00, 103),
(18, '2023-11-11', 410.00, 104),
(19, '2023-11-30', 360.00, 106),
(20, '2023-12-20', 500.00, 105);


-- Analysis query
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;
