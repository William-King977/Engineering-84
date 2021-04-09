# Interview preperation questions
## General
* **Tell me about yourself.**<br />
  Hello! I'm William, a Computer Science graduate from Swansea University and during my time at university, I gained an interest in machine learning and software development. Since I graduated, I have been working on some personal projects to help solidify my knowledge of certain programming languages and challenge myself. For instance, I recently learnt C++ and I applied what I have learnt by creating a Battleship program. Now, I am training to become a DevOps consultant with Sparta Global and I'm excited to see where I'll be in the upcoming weeks.

* **Why Sparta Global?**<br />
  I chose Sparta Global because of their reputation of being the best tech employer of the year 2020 in the Women in Tech awards, which is a really good and notable achievement, as well as, being one of the finalists for the best graduate employer and best employer for training. I have also seen the success stories from other individuals who have given their positive experiences with the training academy and their time with the client. That's the same success I want to drive for and I believe I will achieve that with Sparta Global.

* **Where do you see yourself in a few years time?**<br />
  I first see myself being a Junior DevOps consultant, progressing to a DevOps consultant, then a Senior DevOps consultant with a large, well-known company and I do see myself putting in the work to get towards that level.

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
  * **FULL JOIN:** Returns all the records when there is a match in either the left or right table. Anything not matching will be filled out with NULL values.

* **What is a primary key and their function?**<br />
  A primary key is an attribute (or collection of attributes) that uniquely identifies each record in a table. The constraint ensures that the primary key is unique, not NULL and that there is only one primary key.  

* **What is a foreign key and their function?**<br />
  A foreign key is an attribute (or collection of attributes) in one table that refers to the primary key in another table. It ensures that the row of information in table A corresponds to the correct row of information in table B. The constraint prevents actions that would destroy links between the tables. It also prevents the primary key referenced record from being deleted unless there are no foreign key references to it. With ON DELETE CASCADE, deleting the primary key record will also delete any foreign key rows referring to it. 

* **Types of SQL and their commands.**<br />
  The operations in SQL can be divided into multiple categories.
  * **Data Manipulation Language:** Handles the manipulation of data in the table and can be used to access, modify or delete existing records.
    * SELECT – retrieve data from a table.
    * INSERT – insert data into a table.
    * UPDATE – updates existing data within a table.
    * DELETE – deletes records from a table.
  * **Data Definition Language:** Defines the table schema and database structure as well as modifying their structure.
    * CREATE – creates databases and tables.
    * ALTER – modifies the structure of an existing table. E.g. add, delete, modify columns, and add constraints.
    * DROP – deletes the whole table and its structure.
    * TRUNCATE – deletes all of the table's records while keeping its structure intact.
  * **Data Control Language:** Handles user permissions on the database.
    * GRANT – grants the user's access privileges to the database. E.g. granting the developers the SELECT command.
    * REVOKE – withdraws the user's access privileges given by GRANT, or previously denied permissions. 
  * **Transaction Control Language:** Used to manage transactions within a database.
    * COMMIT – permanently saves a transaction into the database.
    * ROLLBACK – reverts to a previous savepoint in case of errors.
    * SAVEPOINT – temporarily saves a transaction for rollback purposes.

* **Explain normalisation and the 3 Normal Forms.**<br />
  Normalisation is a database design technique for designing relational database tables to reduce data redundancy and remove undesirable effects from operations like INSERT, UPDATE, and DELETE.
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
  An ERD visualises the database structure. It displays each table, the relationships between tables, highlights their primary keys, the table's attributes and their datatype. The three relationships are:
  * **One-to-One:** If a row in table A has only one matching row in table B, and vice versa. E.g. people and national insurance numbers.
  * **One-to-Many:** If a row in table A has many matching rows in table B, but a row in table B has only one matching row in table A. E.g. students and borrowing books.
  * **Many-to-Many:** If a row in table A has many matching rows in table B, and vice versa. E.g. students and modules. Junction tables are often used between many-to-many relationship tables to 'turn' it into a one-to-many relationship.

## Git and GitHub
* **What is Git and its benefits?**<br />
  Git is a version control system, so it's an application that keeps track of code and the changes made to it. The benefits are that code can be shared and worked on with other developers regardless of location, and the complete history of the repository is stored, meaning that a previous version can be restored if an error occurs. Compared with other version control systems, Git is cross platform (Windows, Linux, Mac), is open source, and is considered simple and easy to learn.
  
* **What is GitHub and its benefits?**<br />
  GitHub is a platform that holds online repositories saved on a cloud, so that multiple developers can work on a single project and see each other's edits in real time. It incorporates Git's version control features, and provides project organisation and management features. Compared with Git, changes made can be seen in real time, repositories are public meaning that developers can interact with and contribute to each other's code in order to modify it or improve it, and remote backups of repositories are stored on GitHub.
  
An image of linking a local machine to GitHub using a SSH key. View more [details here](https://github.com/William-King977/eng84_git_github_setup).
![image](https://user-images.githubusercontent.com/44005332/111989661-f8cbbb80-8b09-11eb-91d4-5e7af3ed5476.png)

## Object Oriented Programming
* **What is OOP?**<br />
  OOP is a programming paradigm that relies on the concept of classes and objects. It is used to structure a program into simple, reusable pieces of code blueprints (classes), which are used to create individual instances of objects.
  
* **Benefits of OOP**<br />
  * OOP models complex code as reproducible and simple structures
  * OOP objects can be used across different programs
  * Class-specific behaviour can be applied through polymorphism
  * Makes it easier to debug programs as they can usually be isolated into single classes
  * Protects attributes and methods through encapsulation
  
* **Four Pillars of OOP**<br />
  * **Abstraction:** Abstraction means to hide away the implementation details inside something from the user. For example, when calling a function to calculate tax, the user doesn't need to know how the tax is calculated. This allows code to be reusable and be more maintainable.
  * **Encapsulation:** Encapsulation is the action of enclosing something in or as if in a capsule. In OOP, it is making data private from the user and controlling its access. It can be used to restrict access to certain attributes and methods. Encapsulation prevents attributes from being modified unexpectedly, especially when they are overridden, and hides away any data that doesn't need to be seen or accessed. 
  * **Inheritance:** Inheritance is when a class inherits attributes and methods from a parent class. For example, there is an `Animal` class, and the subclasses include cats, dogs, and sharks. Those subclasses will share the same attributes and methods from the `Animal` class. The main benefit of inheritance is that it saves you time from needing to retype the methods and attributes from the parent class.
  * **Polymorphism:** Polymorphism means "many forms", essentially when the same thing takes on many forms. This occurs during inheritance when the subclasses override the attributes or methods with their own behaviours. For example, with a `Snake` class, a python can inherit from a snake and share the attributes and methods, such as `is_venomous` and `use_venom()`. In this case, because a python is not venomous, these can be overridden to have or return values that are suitable for a python.

## Python Packages, Modules and APIs
* **What is a package?**<br />
  A package is a collection of Python modules, so it is basically a hierarchical file directory structure of Python modules and subpackages that has an `__init__.py` file to distinguish it from a "normal" file directory. They can be used with the following command:
  ```python
  # importing datetime package
  import datetime
  ```
  
* **What are the benefits of packages?**<br />
  Python packages allow you to break down large programs and organise their modules in a consistent way, so that they can be used and reused efficiently. 
  
* **What is a Python module?**<br />
  A Python module is a file containing Python definitions, statements and functions. Any Python file is a module. These can be imported into a Python file for added functionality without the need of repeating code.
  ```python
  # importing date module from datetime package
  from datetime import date

  # you can import your own python files in the same directory
  import my_file
  ```
  
* **What is pip?**<br />
  `pip` is a package manager in Python that allows you to install and manage additional packages that are not part of the Python standard library.
  * To use pip: `pip install package_name`
  * E.g. `pip3 install requests`
  
* **What is an API?**<br />
  An Application Programming Interface is a set of definitions and protocols that allow software products and services to communicate with each other via the internet. Essentially, it is the messenger that runs and delivers your request to the provider you're requesting it from, and then delivers the response back to you. An example with the Python `requests` module is shown below:
  ```python
  import requests # allows you to send HTTP requests
    
  response = requests.get("http://www.bbc.co.uk/")
    
  # Status (code) 200 means the website is live and running
  # Status (code) 400 or 404 means not working
  if response:
      print(f"Success {response.status_code}.")
  else:
      print(f"Oops, something went wrong {response}.")
  ```
  
* **Why should we use APIs?**<br />
  Here are a few reasons why:
  * Using APIs makes it possible to integrate different systems together. For example, an API can be used to enable a Customer Relationship Management (CRM) system and a Marketing Automation system to communicate with each other, so that you can send a marketing email when a sales representative adds a new customer on a CRM. 
  * APIs can be used to add functionalities for improving customer experience and interaction with the organisation. For example, using an API to automatically notify the customer when their delivery has been dispatched.
  * APIs can help reduce software development costs by allowing developers to build reusable components. For example, a backend developer can create a system that holds information about customers. Then other developers across the organisation can use APIs to grab that information and track payments for finance and accounts payable, help customer service resolve problems faster, or even create recommendations for marketing campaigns.


## DevOps
* **What is DevOps and the benefits of using it?**<br />
  DevOps is the practice of combining both the software development and system operations teams to help deliverer products at a faster pace than traditional software development methods. This ensures that they work together across the entire application lifecycle. The benefits of implementing DevOps is that it encourages increased collaboration between the teams, products are delivered in smaller but more frequent iterations to better adapt to changing requirements, and there will be an increase in the quality of the product due to automated testing throughout. 
  
* **Why do you want to become a DevOps Engineer/Consultant?**<br />

* **Explain the role of a DevOps Engineer/Consultant.**<br />

* **What is cloud computing and why should we use it?**<br />

* **Explain how you implemented:**
  * **DRY:**
  * **OOP:**
  * **MVC:**
  * **MVT:** <- ???
