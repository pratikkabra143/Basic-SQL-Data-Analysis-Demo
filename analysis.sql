-- SQL for Data Analysis (MySQL)
-- Dataset: classicmodels

-- 1. SELECT + WHERE + ORDER BY
SELECT customerNumber, customerName, city, country
FROM customers
WHERE country = 'USA'
ORDER BY city ASC;