# Interview preperation questions
## General
* **Tell me about yourself.**<br />
  Hello! I'm William, a Computer Science graduate from Swansea University and during my time at university, I gained an interest in machine learning and software development. Since I graduated, I have been working on some personal projects to help solidify my knowledge on certain programming languages and challenge myself. For instance, I recently learnt C++ and I applied what I have learnt by creating a Battleship program. Now, I am training to become a DevOps consultant with Sparta Global and I'm excited to see where I'll be in the up coming weeks.

* **Why Sparta Global?**<br />
  I chose Sparta Global because of their reputation of being the best tech employer of the year 2020 in the Women in Tech awards, which is a really good and notable achievement, as well as, being one of the finalists for the best graduate employer and best employer for training. I have also seen the success stories from other individuals who have given their positive experiences with the training academy and their time with the client. That's the same success I want to drive for and I believe I will achieve that with Sparta Global.

* **Where do you see yourself in a few years time?**<br />
  I first see myself being a Junior DevOps consultant, progressing to a DevOps consultant, then a Senior DevOps consultant with a large, well known company and I do see myself putting the work to get towards that level.

## DevOps
* **What is DevOps and the benefits of using it?**<br />
  DevOps is the practice of combining both the software development and system operations teams to help deliverer products at a faster pace than traditional software development methods. This ensures that they work together across the entire application lifecycle. The benefits of implementing DevOps is that it encourages increased colleberation between the teams, products are delivered in smaller but more frequent iterations to better adapt to changing requirements, and there will be an increase in quality of the product due to automated testing throughout. 

## Agile and Scrum
* **What is Agile and the benefits of implementing it?**<br />
  Agile is a software development methodology that focuses on iterative development, responding to changing requirements, and delivering working software quickly, while reducing overheads, such as documentation. The benefits of Agile is that it can lower project risk as there are risk assessments throughout the project, there is ongoing customer engagement, so that the end product will be exactly what the customer wants, and it can adapt to changing requirements to fit customer needs with minimal effort, regardless of the project's progress.

* **What is Scrum and the benefits of implementing it?**<br />
  Scrum is a form of Agile that focuses on teamwork, accountability and iterative progress toward a well-defined goal (DoD) through the use of Sprints. The benefits of Scrum is that it is transparent meaning that all of the teams involved will have a full understanding of the project, team quality and effectiveness is increased through the use of the Sprint Retrospective to review their performance, and there will be higher customer satisfaction as they will receive a working increment to review on during the Sprint Review and this is where changing requirements can be made.

## SQL and Databases
* **What is a JOIN?**<br />
  A JOIN clause is used to combine two or more tables based on a related column (attribute) between them. The four main types of JOINS are:
  * **INNER JOIN:** Returns records that have matching values on both tables.
  * **LEFT JOIN:** Returns all records from the left table, and the matched records from the right table. Any left values unmatched will be NULL.
  * **RIGHT JOIN:** Returns all records from the right table, and the matched records from the left table. Any right values unmatched will be NULL.
  * **FULL JOIN:** Returns all the records when there is a match in either the left or right table. Anything not matching will have NULL values.

* **What is a primary key and their function?**<br />
  A primary key is an ttribute (or collection of attributes) that uniquely identifies each record in a table. The constraint ensures that the primary key is unique, not NULL and that there is only one primary key.  

* **What is a foreign key and their function?**<br />
  A foreign key is an attribute (or collection of attributes) in one table that refers to the primary key in a another table. It ensures that the row of information in Table A corresponds to the correct row of information in Table B. The constraint prevents actions that would destroy links between the tables. It also prevents the primary key referenced record from being deleted unless there are no foreign key references to it. With ON DELETE CASCADE, deleting the primary key record will also delete any foreign key rows referring to it. 

* **Types of SQL and their commands.**<br />
  * **Data Manipulation Language:** SELECT, INSERT, UPDATE, DELETE
  * **Data Definition Language:** CREATE, ALTER, DROP, TRUNCATE
  * **Data Control Language:** GRANT, REVOKE
  * **Transaction Control Language:** COMMIT, ROLLBACK, SAVEPOINT

* **Explain normalisation and the 3 Normal Forms.**<br />
  Normalisation is database design technique for designing relational database tables to reduce data redundancy and remove undesirable effects from operations like INSERT, UPADATE, and DELETE.
  * **First Normal Form:**
    * All data values must be atomic i.e. table entries should be single values, not sets or composite objects.
    * Simplifies queries and data comparisons.
  * **Second Normal Form:**
    * Is in 1NF
    * All non-key attributes are fully functionally dependent on the primary key and not on a subset.
  * **Third Normal Form:**
    * Is in 2NF
    * There is no transitive function dependency.
    * Transitive dependency is a functional dependency between two (or more) non-key attributes.

* **Entity relationship diagram**<br />
  An ERD visualises the database structure. It displays each table, the relationships between tables, hightlights their primary keys, the table's attributes and their datatype. The three relationships are:
  * **One-to-One:** If a row in table A has only one matching row in table B, and vice versa. E.g. people and national insurance numbers.
  * **One-to-Many:** If a row in table A has many matching rows in table B, but a row in table B has only one matching row in table A. E.g. students and borrowing books.
  * **Many-to-Many:** If a row in table A has many matching rows in table B, and vice versa. E.g. students and modules. Junction tables are often used between many-to-many relationship tables to 'turn' it into a one-to-many relationship.
