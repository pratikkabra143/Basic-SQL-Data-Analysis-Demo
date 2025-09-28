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

-- 4. LEFT JOIN
SELECT p.productCode, p.productName, od.quantityOrdered
FROM products p
LEFT JOIN orderdetails od ON p.productCode = od.productCode
ORDER BY p.productName;

-- 5. RIGHT JOIN
SELECT od.orderNumber, od.productCode, p.productName
FROM orderdetails od
RIGHT JOIN products p ON od.productCode = p.productCode;

-- 6. Subquery Example
SELECT customerName
FROM customers
WHERE customerNumber IN (
    SELECT customerNumber
    FROM orders
    WHERE orderDate >= '2004-01-01'
);

-- 7. Aggregate Function (AVG)
SELECT AVG(order_total) AS avg_order_value
FROM (
    SELECT o.orderNumber, SUM(od.quantityOrdered * od.priceEach) AS order_total
    FROM orders o
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
    GROUP BY o.orderNumber
) AS totals;
