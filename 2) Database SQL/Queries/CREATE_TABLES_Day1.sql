-- Database 
-- Get a list of databases
-- SELECT [name] FROM sys.databases
-- GO

-- SQL reserved keywords
-- DROP DATABASE king_db;
CREATE DATABASE king_db;

USE king_db;
DROP table film_table;
DROP table director_table;

-- First digit in identity denotes start value
-- Second digit in identity denotes the incremented by value
CREATE TABLE film_table
(
    film_id INT IDENTITY(1,1) PRIMARY KEY,
    film_name VARCHAR(15),
    film_type VARCHAR(15),
    director_id INT
)

-- Describes your table
-- SP_HELP film_table

-- Insert values implicitly
INSERT INTO film_table
VALUES
('Batman', 'Action', 2),
('The Thing', 'Horror', 3);

-- Insert values explicitly
INSERT INTO film_table
(film_type, film_name, director_id)
VALUES
('Action Horror', 'Predator', 1);

-- Make directors table
CREATE TABLE director_table
(
    director_id INT IDENTITY(1,1) PRIMARY KEY,
    director_name VARCHAR(20),
    film_id INTEGER
)

-- Add directors
INSERT INTO director_table
(director_name, film_id)
VALUES 
('John McTiernan', 3),
('Matt Reeves', 2),
('John Carpenter', 1)

-- Allows deletion of foreign key related records.
-- For this example, if you delete a director, the films they directed will be removed from the films table.
ALTER TABLE film_table
    ADD CONSTRAINT fk_directorID
    FOREIGN KEY (director_id)
    REFERENCES director_table(director_id)
    ON DELETE CASCADE;


EXEC sp_fkeys 'director_table';
DELETE FROM director_table WHERE director_id = 1;

SELECT * FROM director_table;
SELECT * FROM film_table;

-- NOT NULL for film table, film_name column
-- Fills Null for fields not specified, throws Error if film_name is empty
ALTER TABLE film_table
ALTER COLUMN film_name VARCHAR(10) NOT NULL

INSERT INTO film_table
(film_name, film_type)
VALUES
('IP Man', 'Martial Arts');

-- Setting Default value for film_type
ALTER TABLE film_table
ADD CONSTRAINT Default_SciFi DEFAULT 'Sci-fi' FOR film_type

INSERT INTO film_table
(film_name)
VALUES
('Terminator');

-- UPDATE
UPDATE film_table 
SET director_id = 0
WHERE director_id IS NULL AND film_name = 'IP Man';

-- DELETE 
DELETE FROM film_table
WHERE film_id = 6;

SELECT * FROM director_table;
SELECT * FROM film_table;
