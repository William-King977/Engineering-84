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