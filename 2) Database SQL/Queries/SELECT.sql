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