USE Northwind;

-- Using a subquery to find customers who didn't place any orders
SELECT CompanyName AS "Customer"
FROM Customers
WHERE CustomerID NOT IN
    (SELECT CustomerID FROM Orders);

-- Same as above but with joins instead
SELECT c.CompanyName AS "Customer"
FROM Customers c FULL JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;
 
SELECT c.CompanyName AS "Customer"
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;

SELECT c.CompanyName AS "Customer"
FROM Orders o RIGHT JOIN Customers c ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;


-- Allows use of aggregation without GROUP BY. Repeating the Max Price on each row.
SELECT OrderID, ProductID, UnitPrice, Quantity, Discount,
    (SELECT MAX(UnitPrice) FROM [Order Details] od) AS "Max Price"
FROM [Order Details]


-- Subquery calculates total revenue made by each product.
-- Results are INNER joined with each product and used for calculations in the main query.
SELECT od.ProductID, sq1.totalamt AS "Total Sold for this Product",
    UnitPrice, UnitPrice/totalamt * 100 AS "% of Total"
FROM [Order Details] od
INNER JOIN
    (SELECT ProductID, SUM(UnitPrice * Quantity) AS totalamt
    FROM [Order Details]
    GROUP BY ProductID) sq1 ON sq1.ProductID = od.ProductID;


-- Products discontinued with extra info
SELECT OrderID, ProductID, UnitPrice, Quantity, Discount 
FROM [Order Details]
WHERE ProductID IN (SELECT ProductID 
                  FROM Products
                  WHERE Discontinued = 1);

-- Above but using joins instead.
SELECT od.OrderID, od.ProductID, od.UnitPrice, od.Quantity, od.Discount 
FROM [Order Details] od INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE p.Discontinued = 1;


-- UNION ALL
-- Combines both tables together. Allows duplicate values.
SELECT EmployeeID AS "Employee/Supplier"
FROM Employees
UNION ALL
SELECT SupplierID
FROM Suppliers
