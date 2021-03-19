SELECT * FROM products;
/*STRING FUNCTIONS*/
DROP DATABASE IF EXISTS king_db;
CREATE DATABASE king_db;
USE king_db;

DROP TABLE IF EXISTS film_table;

CREATE TABLE film_table(
    film_id INT IDENTITY(1,1) PRIMARY KEY,
    film_name VARCHAR(50) NOT NULL,
    film_type VARCHAR(50)
);

INSERT INTO film_table VALUES
('    Star Wars', 'Sci fi'),
('Star Trek    ', 'Sci fi');

INSERT INTO film_table VALUES
('Batman', 'Action');


INSERT INTO film_table
(film_name) VALUES
('Superman');


SELECT * FROM film_table;

--STRING FUNCTIONS--
-- Finds first occurance of the character (starts at 1)
SELECT film_name, CHARINDEX('s', film_name) AS "Position of Character" FROM film_table;

-- Gets substring from an index (2), then the next (3) characters 
SELECT film_name, SUBSTRING(film_name, 2, 3) AS "Extracted String" FROM film_table;

-- Get the last (2) characters
SELECT film_name, RIGHT(film_name, 2) AS "Extracted String" FROM film_table;

-- Get the first (2) characters
SELECT film_name, LEFT(film_name, 2) AS "Extracted String" FROM film_table;

-- Trim white space from the end 
SELECT film_name, RTRIM(film_name) AS "Trimmed String" FROM film_table;

-- Trim white space from the start
SELECT film_name, LTRIM(film_name) AS "Trimmed String" FROM film_table;

-- Trim white space from both sides
SELECT film_name, TRIM(film_name) AS "Trimmed String" FROM film_table;

-- Replace a character (single space) with another character (A)
SELECT film_name, REPLACE(film_name,' ','A') AS "Replaced String" FROM film_table;

-- Length of a string
SELECT film_name, LEN(film_name) AS "LENGTH of String" FROM film_table;

-- Set string to Upper or Lower case
SELECT film_name, UPPER(film_name) AS "Uppercase String", 
LOWER(film_name) AS "Lowercase String" 
FROM film_table


USE Northwind;

-- Display UK postcodes with region code (extracted) and index of white space
SELECT PostalCode AS "Post Code",
LEFT(PostalCode, CHARINDEX(' ', PostalCode) - 1) AS "Post Code Region",
CHARINDEX(' ', PostalCode) AS "Space Found", Country
FROM Customers
WHERE Country = 'UK';

-- Find products that have at least one apostrophe
SELECT ProductName FROM Products
WHERE CHARINDEX('''', ProductName) != 0;

