CREATE DATABASE king_db;
USE king_db;

DROP TABLE IF EXISTS course
CREATE TABLE course (
    c_id INT IDENTITY(1,1) PRIMARY KEY,
    course_name VARCHAR(30)
)

DROP TABLE IF EXISTS student
CREATE TABLE student (
    st_id INT IDENTITY(1,1),
    student_name VARCHAR(30),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(c_id) ON DELETE CASCADE
)


INSERT INTO course
(
    course_name
)
VALUES
(
    'Business' 
),
(
    'Test'
),
(
    'Agile'
),
(
    'Web'
),
(
    'Dev'
)

INSERT INTO student
(
   student_name, course_id 
)
VALUES
(
    'Lee', 1
),
(
    'Barry', 1
),
(
    'David', 2
),
(
    'Tim',5
)


INSERT INTO student
(
   student_name
)
VALUES
(
    'Nicole'   
)

SELECT * FROM student
SELECT * FROM course

/*INNER JOIN-matched rows*/
--DOD-->JOIN SYNTAX-->1. Applying the join keyword based on the question
                -->2. Understanding which table to put in the left and which at the right
                -->3. Applying the ON keyword to define the primary key and foreign key relationship

 
SELECT * FROM student s INNER JOIN course c
ON s.course_id=c.c_id --ON defines primary key and foeign key relationship

/*OUTER JOINS-LEFT JOIN, RIGHT JOIN, FULL JOIN*/
/*LEFT JOIN-All the rows from the left table and only the matching rows from the right table*/

SELECT * FROM student s LEFT JOIN course c   
ON s.course_id = c.c_id

SELECT * FROM student s RIGHT JOIN  course c
ON s.course_id = c.c_id

SELECT * FROM student s FULL JOIN course c   
ON s.course_id = c.c_id

-- Northwind JOIN Exercise
-- Joining Products and Supplier table, and fetching info from both tables.
SELECT s.SupplierID, s.CompanyName, AVG(p.UnitsOnOrder) AS "Average On Order"
FROM Products p INNER JOIN Suppliers s
    ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierID, s.CompanyName;

-- Joining multiple tables
SELECT ProductName, UnitPrice, CompanyName AS "Supplier",
    CategoryName AS "Category"
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
INNER JOIN Categories c ON p.CategoryID = c.CategoryID;

-- Joining multiple tables to show info from those tables
SELECT o.OrderID, o.OrderDate, o.Freight, c.CompanyName, 
    CONCAT(e.FirstName, ' ', e.LastName) AS "Employee Name"
FROM Orders o 
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID;

-- Date formatting
SELECT OrderID, FORMAT(OrderDate, 'dd/MM/yy')
FROM Orders;

