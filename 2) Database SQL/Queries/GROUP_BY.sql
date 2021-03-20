-- ## GROUP BY, AGGREGATES ##
-- Number of orders from Employees 5 and 7 (showing separately)
SELECT o.EmployeeID,  COUNT(*) AS "Orders" FROM Orders o
WHERE o.EmployeeID IN (5, 7)
GROUP BY o.EmployeeID;

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