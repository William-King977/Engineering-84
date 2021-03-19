USE Northwind;

-- Table Aliasing
SELECT * FROM Customers c
WHERE c.City = 'Paris';

-- Number of employees from London
SELECT COUNT(*) AS "Number of Employees from London" FROM Employees e
WHERE e.City = 'London';

-- Employees who are doctors
SELECT e.FirstName + ' ' + e.LastName AS "Employee Name" FROM Employees e
WHERE e.TitleOfCourtesy = 'Dr.';

-- Number of discountinued products
SELECT COUNT(*) AS "Number of Discontinued Products" FROM Products p
WHERE p.Discontinued = 1;

-- Get Top few records
SELECT TOP 10 CompanyName, City FROM Customers
WHERE Country = 'France';

-- AND condition
SELECT ProductName, UnitPrice FROM Products
WHERE CategoryID = 1 AND Discontinued = 0;

-- Greater than
SELECT ProductName, UnitPrice FROM Products
WHERE UnitsInStock > 0 OR UnitPrice > 29.99;

-- DISTINCT removes duplicate records in query
SELECT DISTINCT Country FROM Customers
WHERE ContactTitle = 'Owner';

-- WILDCARDS
-- Get items beginning with 'A' followed by any number of characters.
-- Note, not case sensitive.
SELECT p.ProductName FROM Products p 
WHERE p.ProductName LIKE 'A%';

-- Get items beginning with 'A', 'C' or 'D' followed by any number of characters.
SELECT p.ProductName FROM Products p 
WHERE p.ProductName LIKE '[ACD]%';

-- Get items starting without 'A', 'C' or 'D' followed by any number of characters.
SELECT p.ProductName FROM Products p 
WHERE p.ProductName LIKE '[^ACD]%';

-- Get items where the third character is 'P'
SELECT p.ProductName FROM Products p 
WHERE p.ProductName LIKE '__P%';

-- IN Clause, alternative to OR
SELECT * FROM Customers
WHERE Region IN ('WA','SP');

-- BETWEEN
SELECT * FROM EmployeeTerritories
WHERE TerritoryID BETWEEN 06800 AND 09999;

-- Products with a UnitPrice of less than 5.00 (USD)
SELECT p.ProductName, p.ProductID FROM Products p
WHERE p.UnitPrice < 5.00;

-- Get categories beginning in B or S.
SELECT * FROM Categories c
WHERE c.CategoryName LIKE '[BS]%';

-- Count number of orders from EmployeeIDs 5 and 7
SELECT COUNT(*) FROM Orders o
WHERE o.EmployeeID IN (5, 7);

-- Showing them seperately (above query)
SELECT o.EmployeeID,  COUNT(*) AS "Orders" FROM Orders o
WHERE o.EmployeeID IN (5, 7)
GROUP BY o.EmployeeID;

-- CONCAT
SELECT c.CompanyName AS "Company Name",
CONCAT(c.City, ', ', c.Country) AS "City"
FROM Customers c;

-- Concatinate firstname and lastname
SELECT CONCAT(e.FirstName, ' ', e.LastName) AS "Employee Name"
FROM Employees e;

-- Shows companies with regions that are NULL
SELECT CompanyName AS "Company Name",
CONCAT(City, ', ', Country) AS "City"
FROM Customers
WHERE Region IS NULL;

-- Find the countries that have Region Codes
SELECT DISTINCT c.Country
FROM Customers c
WHERE c.Region IS NOT NULL;

-- Using calculations as part of SELECT. There are 2,155 rows!
SELECT TOP 10 UnitPrice, Quantity, Discount, 
UnitPrice * Quantity AS "Gross Total"
FROM [Order Details];

-- Applying the discount as "Net Total" column
SELECT TOP 10 UnitPrice, Quantity, Discount,
UnitPrice * Quantity AS "Gross Total",
UnitPrice * Quantity * (1.0 - Discount) AS "Net Total"
FROM [Order Details];

-- In Descending Order of "Gross Total"
SELECT TOP 10 UnitPrice, Quantity, Discount,
UnitPrice * Quantity AS "Gross Total"
FROM [Order Details]
ORDER BY "Gross Total" DESC;

-- Descending order of "Net Total" (highest first)
-- ORDER BY 5 DESC will order by the 5th column
SELECT TOP 10 UnitPrice, Quantity, Discount,
UnitPrice * Quantity AS "Gross Total",
UnitPrice * Quantity * (1.0 - Discount) AS "Net Total"
FROM [Order Details]
ORDER BY "Net Total" DESC;

-- DATES
-- adds 5 days to the order daye, then shows difference of OrderDate and ShippedDate. Formatted date as well.
SELECT FORMAT(DATEADD(d, 5, OrderDate), 'dd/MM/yy') AS "Due Date",
    DATEDIFF(d, OrderDate, ShippedDate) AS "Ship Days"
FROM Orders;

-- Find Employee's age based on their BirthDate. Rounded down.
SELECT CONCAT(FirstName, ' ', LastName) as "Name",
    FLOOR(DATEDIFF(YY, BirthDate, GETDATE())) AS "Age"
FROM Employees;

-- CASE statements
-- Deliveries are noted as 'On Time' or 'Overdue'
SELECT CASE
WHEN DATEDIFF(d, OrderDate, ShippedDate) < 10 THEN 'On Time'
ELSE 'Overdue'
END AS "Status" -- double quotes cos column name
FROM Orders;

-- Determines retirement status based on age.
SELECT CONCAT(FirstName, ' ', LastName) as "Name",
    FLOOR(DATEDIFF(YY, BirthDate, GETDATE())) AS "Age",
    CASE
WHEN FLOOR(DATEDIFF(YY, BirthDate, GETDATE())) > 65 THEN 'Retired'
WHEN FLOOR(DATEDIFF(YY, BirthDate, GETDATE())) > 60 THEN 'Retirement due'
ELSE 'More than 5 years to go'
END AS "Retirement Status"
FROM Employees;

-- AGGREGATES
-- Show Sum, Avg, Min, Max of each supplier (ID).
-- Remove SupplierID if you remove GROUP BY SupplierID. Aggr is not applied to it.
SELECT SupplierID,
    SUM(UnitsOnOrder) AS "Total On Order",
    AVG(UnitsOnOrder) AS "Avg On Order",
    Min(UnitsOnOrder) AS "Min On Order",
    Max(UnitsOnOrder) AS "Max On Order"
FROM Products
GROUP BY SupplierID;

-- Calculate Avg ReorderID, GroupBy CategoryID, then sort in Descending order.
SELECT CategoryID,
    AVG(ReorderLevel) AS "Avg Reorder Level"
FROM Products
GROUP BY CategoryID
ORDER BY "Avg Reorder Level" DESC;

-- Finding Average Orders larger than 5
SELECT SupplierID,
    SUM(UnitsOnOrder) AS "Total On Order",
    AVG(UnitsOnOrder) AS "Avg On Order"
FROM Products
GROUP BY SupplierID
HAVING "Avg On Order" > 5;



