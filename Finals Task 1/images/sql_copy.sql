CREATE DATABASE Multi_Level_Company;
SHOW DATABASES;

USE Multi_Level_Company;

CREATE TABLE employees(
employee_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(255) NOT NULL,
manager_id INT,
FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

DESCRIBE employees;

CREATE TABLE departments(
department_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(255) NOT NULL
);

DESCRIBE departments;

CREATE TABLE employee_departments(
employee_id INT,
department_id INT,
FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

DESCRIBE employee_departments;

CREATE TABLE employee_projects(
employee_id INT,
FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
project_name VARCHAR(255) NOT NULL
);

DESCRIBE employee_projects;

CREATE TABLE managers(
manager_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
employee_id INT,
FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

DESCRIBE managers;
