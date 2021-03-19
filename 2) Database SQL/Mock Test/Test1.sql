
/*1. Create a report showing the title of courtesy and the first and last name
of all employees whose title of courtesy is not "Ms." or "Mrs.".*/
SELECT TitleOfCourtesy, FirstName, LastName
FROM Employees
WHERE TitleOfCourtesy NOT IN ('Ms.', 'Mrs.')


/*2. Create a report that shows the company name, contact title, city and country of all customers 
in Mexico or in any city in Spain except Madrid(in Spain).*/
SELECT s.CompanyName, s.ContactTitle, c.City AS "Customer City", c.Country AS "Customer Country"
FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID
    INNER JOIN [Order Details] od ON od.OrderID = o.OrderID
    INNER JOIN Products p ON p.ProductID = od.ProductID
    INNER JOIN Suppliers s ON s.SupplierID = p.SupplierID
WHERE c.Country IN ('Mexico', 'Spain') AND c.City NOT IN ('Madrid');


/*3. Create a report showing the title of courtesy and the first and
last name of all employees whose title of courtesy begins with "M" and
is followed by a character and a period (.).*/
SELECT TitleOfCourtesy, FirstName, LastName
FROM Employees
WHERE TitleOfCourtesy LIKE 'M_.'


/*4. Create a report showing the first and last names of
all employees whose region is defined.*/
SELECT FirstName, LastName
FROM Employees
WHERE Region IS NOT NULL;


/*5. Select the TitleOfCourtesy, FirstName and LastName columns from the Employees table.
  Sort first by TitleOfCourtesy in ascending order and then by LastName 
   in descending order.*/
SELECT TitleOfCourtesy, FirstName, LastName
FROM Employees
ORDER BY TitleOfCourtesy ASC, LastName DESC


/*6. Write a query to get the number of employees with the same job title.*/
SELECT Count(DISTINCT e1.EmployeeID) AS "Number of Employees with the same Job Title"
FROM Employees e1 INNER JOIN Employees e2 ON e1.Title = e2.Title
WHERE e1.EmployeeID != e2.EmployeeID


/*7.
Create a report showing the Order ID, the name of the company that placed the order,
and the first and last name of the associated employee.
Only show orders placed after January 1, 1998 that shipped after they were required.
Sort by Company Name.
*/
SELECT o.OrderID, c.CompanyName, e.FirstName, e.LastName 
FROM Employees e INNER JOIN Orders o ON e.EmployeeID = o.EmployeeID
    INNER JOIN Customers c ON c.CustomerID = o.CustomerID 
WHERE o.OrderDate > '1998-1-1'
    AND o.ShippedDate > o.RequiredDate
ORDER BY CompanyName ASC;


/*8.
Create a report that shows the total quantity of per products (from the OrderDetails table) ordered. 
Only show records for products for which the quantity ordered is fewer than 200. 
*/
SELECT p.ProductName, SUM(od.Quantity)
FROM [Order Details] od INNER JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName 
HAVING SUM(od.Quantity) < 200;


/*9.Create a report that shows the total number of orders by Customer since December 31, 1996. 
The report should only return rows for which the NumOrders is greater than 15. 
*/
SELECT o.CustomerID, Count(*) AS "Number of Orders"
FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE DATEDIFF(day, CONVERT(date, '1996-12-31'), o.OrderDate) >= 1
GROUP BY o.CustomerID
HAVING Count(*) > 15;


/*10.  SQL statement will return all customers, and number of orders they might have placed. 
Include those customers as well who have not placed any orders.*/
SELECT c.CustomerID, SUM(o.OrderID)
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;
