# Finals Task 1. Multi Level Company Database 
For this task, we are given MySQL statements that need to be implemented.
## Here's the screenshot of Query Statements (See screenshot)
- **TASK 1: Create a table named employees with the following fields:**
  - employee_id: Unique integer, auto-increment, primary key.
  - employee_name: String (VARCHAR) with up to 255 characters, not null
  - manager_id: Integer, foreign key referencing employee_id in the same table (employees).
![Sample Output](images/QS_TASK1.png)
- **Task 2: Create a table named departments with the following fields:**
  - department_id: Unique integer, auto-increment, primary key.
  - department_name: String (VARCHAR) with up to 255 characters, not null.
![Sample Output](images/QS_TASK2.png)
- **Task 3: Create a table named employee_departments with the following fields:**
  - employee_id: Integer, foreign key referencing employee_id in employees.
  - department_id: Integer, foreign key referencing department_id in departments.
  - Composite primary key (employee_id, department_id).
![Sample Output](images/QS_TASK3.png)
- **Task 4: Create a table named employee_projects with the following fields:**
  - employee_id: Integer, foreign key referencing employee_id in employees.
  - project_name: String (VARCHAR) with up to 255 characters, not null.
![Sample Output](images/QS_TASK4.png)
- **Task 5: Create a table named managers with the following fields:**
  - manager_id: Unique integer, auto-increment, primary key.
  - employee_id: Integer, foreign key referencing employee_id in employees.
![Sample Output](images/QS_TASK5.png)
## Here's the screenshot of Table Structure (See screenshot)
- TASK 1

![Sample Output](images/TS_TASK1.png)
- TASK 2

![Sample Output](images/TS_TASK2.png)
- TASK 3

![Sample Output](images/TS_TASK3.png)
- TASK 4

![Sample Output](images/TS_TASK4.png)
- TASK 5

![Sample Output](images/TS_TASK5.png)
## Here's the ER Diagram or Relational schema 
![Sample Output](images/ERD.png)
## Sql copy of the database and table structures
![Sql copy of the database and table sturctures](images/sql_copy.sql)
