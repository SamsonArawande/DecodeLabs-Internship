-- =====================================================================
-- Decode Labs Data Analytics Internship - Project 3: SQL Data Analysis
-- Intern:   Samson Oluwatimilehin Arawande
-- Database: Orders_Database.db (SQLite, run in DB Browser for SQLite)
-- Table:    Orders_Clean (1,200 rows, 14 columns; cleaned in Project 1)
-- Date:     14 Oct 2026
-- Note:     Run one query at a time (highlight it, then Ctrl+Enter).
-- Note:     "Order value" below means TotalPrice summed over every order
--           placed, including Cancelled and Returned orders (497 of 1,200).
--           It is not realized revenue. Query 14 repeats the product
--           summary with Cancelled and Returned orders excluded.
-- =====================================================================


-- ---------------------------------------------------------------------
-- PART 1: SELECT
-- ---------------------------------------------------------------------

-- Q1. Preview the first 10 rows, all columns
SELECT * FROM Orders_Clean LIMIT 10;

-- Q2. Count every row (verifies the import)
-- Result: 1200 (matches the Project 1 row count)
SELECT COUNT(*) FROM Orders_Clean;

-- Q3. Select specific columns only
SELECT OrderID, Product, Quantity, TotalPrice
FROM Orders_Clean
LIMIT 10;


-- ---------------------------------------------------------------------
-- PART 2: WHERE and ORDER BY
-- ---------------------------------------------------------------------

-- Q4. Filter rows by a text value
SELECT OrderID, Product, Quantity, TotalPrice
FROM Orders_Clean
WHERE Product = 'Laptop';

-- Q5. Count the Laptop orders
-- Result: 173 (matches the Project 2 Product PivotTable)
SELECT COUNT(*) FROM Orders_Clean WHERE Product = 'Laptop';

-- Q6. Ten highest-value orders
SELECT OrderID, Product, Quantity, TotalPrice
FROM Orders_Clean
ORDER BY TotalPrice DESC
LIMIT 10;

-- Q7. Orders above the Project 2 IQR outlier cutoff (3330.4075)
-- Result: 8 (matches the 8 outliers found with the IQR method in Excel)
SELECT COUNT(*) FROM Orders_Clean WHERE TotalPrice > 3330.4075;

-- Q8. Combine conditions with AND: Laptop orders of exactly 5 units
-- Result: 39 rows
SELECT OrderID, Product, Quantity, TotalPrice
FROM Orders_Clean
WHERE Product = 'Laptop' AND Quantity = 5
ORDER BY TotalPrice DESC;


-- ---------------------------------------------------------------------
-- PART 3: GROUP BY with COUNT, AVG, SUM
-- ---------------------------------------------------------------------

-- Q9. Order count and average order value per product
-- Result: 7 rows; matches the Project 2 Product PivotTable
SELECT Product,
       COUNT(*) AS Order_Count,
       ROUND(AVG(TotalPrice), 2) AS Avg_TotalPrice
FROM Orders_Clean
GROUP BY Product
ORDER BY Avg_TotalPrice DESC;

-- Q10. Order count and average order value per referral source
-- Result: 5 rows; matches the Project 2 Referral PivotTable
SELECT ReferralSource,
       COUNT(*) AS Order_Count,
       ROUND(AVG(TotalPrice), 2) AS Avg_TotalPrice
FROM Orders_Clean
GROUP BY ReferralSource
ORDER BY Avg_TotalPrice DESC;

-- Q11. Order count and total order value per product (all 1,200 orders)
-- Result: 7 rows; Chair is first (195620.11), Phone is last (151722.39)
SELECT Product,
       COUNT(*) AS Order_Count,
       ROUND(SUM(TotalPrice), 2) AS Total_Order_Value
FROM Orders_Clean
GROUP BY Product
ORDER BY Total_Order_Value DESC;


-- ---------------------------------------------------------------------
-- PART 4: HAVING, a percentage calculation, and a status filter
-- ---------------------------------------------------------------------

-- Q12. HAVING filters groups (WHERE filters rows): products with > 170 orders
-- Result: 4 rows (Printer 181, Tablet 179, Chair 178, Laptop 173)
SELECT Product,
       COUNT(*) AS Order_Count
FROM Orders_Clean
GROUP BY Product
HAVING COUNT(*) > 170
ORDER BY Order_Count DESC;

-- Q13. Each product's share of total order value (subquery gives the grand total)
-- Result: 7 rows; shares run from 15.47 (Chair, Printer) down to 12.0 (Phone)
SELECT Product,
       ROUND(SUM(TotalPrice), 2) AS Total_Order_Value,
       ROUND(100.0 * SUM(TotalPrice) / (SELECT SUM(TotalPrice) FROM Orders_Clean), 2) AS Order_Value_Share_Pct
FROM Orders_Clean
GROUP BY Product
ORDER BY Total_Order_Value DESC;

-- Q14. Product summary excluding Cancelled and Returned orders
-- NOT IN keeps every row whose status is not in the list.
-- Result: 7 rows covering 703 orders (total order value 745088.05);
--         Printer is first (120998.36), Phone is last (94534.93)
SELECT Product,
       COUNT(*) AS Order_Count,
       ROUND(SUM(TotalPrice), 2) AS Total_Order_Value,
       ROUND(AVG(TotalPrice), 2) AS Avg_TotalPrice
FROM Orders_Clean
WHERE OrderStatus NOT IN ('Cancelled', 'Returned')
GROUP BY Product
ORDER BY Total_Order_Value DESC;
