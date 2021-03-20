-- ### DATES ###
-- adds 5 days to the order date, then shows difference of OrderDate and ShippedDate. Formatted date as well.
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