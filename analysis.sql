-- SQL for Data Analysis (MySQL)
-- Dataset: classicmodels

-- 1. SELECT + WHERE + ORDER BY
SELECT customerNumber, customerName, city, country
FROM customers
WHERE country = 'USA'
ORDER BY city ASC;

-- 2. GROUP BY + Aggregate Function (SUM)
SELECT o.customerNumber, SUM(od.quantityOrdered * od.priceEach) AS total_spent
FROM orders o
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY o.customerNumber
ORDER BY total_spent DESC;

-- 3. INNER JOIN
SELECT o.orderNumber, c.customerName, o.orderDate
FROM orders o
INNER JOIN customers c ON o.customerNumber = c.customerNumber
ORDER BY o.orderDate DESC;