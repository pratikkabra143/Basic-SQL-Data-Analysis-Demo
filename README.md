---

# Basic SQL Data Analysis Demonstration

---

### Objective: Use SQL queries to extract and analyze data from a database.

### Tools Used: MySQL

### Dataset: [ClassicModels Sample Database](https://www.mysqltutorial.org/mysql-sample-database.aspx)

---

## 🛠 Deliverables
The following SQL operations were implemented for demonstration purposes:  

1. **SELECT + WHERE + ORDER BY** – Filtering customers by country.  
2. **GROUP BY + Aggregate (SUM)** – Calculating customer spending.  
3. **INNER JOIN** – Linking orders with customer details.  
4. **LEFT JOIN** – Retrieving products with order details (including products not ordered).  
5. **RIGHT JOIN** – Retrieving all products with their order usage.  
6. **Subquery** – Customers with recent orders.  
7. **Aggregate (AVG)** – Average order value.  
8. **CREATE VIEW** – Precomputed customer spending view.  
9. **CREATE INDEX** – Optimizing queries by indexing `customerNumber` in orders.  

---

## 📂 Project Structure

SQL-Data-Analysis/
- analysis.sql # Contains all the SQL queries
- database/database.sql # ClassicModels dataset (schema + inserts)
- screenshots/*.png # Screenshots of query results
- README.md # Project explanation

---

## 🚀 How to Reproduce
1. Import the `database.sql` into MySQL.  
2. Run queries from `analysis.sql` in order.  
3. Check results and compare with provided screenshots.  

---

## 📷 Screenshots  
Screenshots for each query result are included in the `screenshots/` folder.  

---
