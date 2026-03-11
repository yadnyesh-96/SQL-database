
USE orgainization;

CREATE TABLE department(
deptId INT(5) PRIMARY KEY,
deptName VARCHAR(200),
location VARCHAR(200) 
);

CREATE TABLE employee(
empId INT(5) PRIMARY KEY, 
empName VARCHAR(200),
deptId INT(5), FOREIGN KEY (deptId) REFERENCES department(deptId),
salary INT(5),
join_year INT(5) 
);

CREATE TABLE project(
pId INT(5) PRIMARY KEY,
pName VARCHAR(200),
empId INT(5), FOREIGN KEY (empId) REFERENCES employee(empId),
budget INT(5)
);

INSERT INTO Department (deptId, deptName, location) VALUES
(1, 'HR', 'Mumbai'),
(2, 'IT', 'Pune'),
(3, 'Sales', 'Mumbai'),
(4, 'Finance', 'Delhi'),
(5, 'Marketing', 'Pune'),
(6, 'Support', 'Bangalore');

INSERT INTO Employee (empId, empName, deptId, salary, join_year) VALUES
(1, 'Rahul', 2, 70000, 2019),
(2, 'Amit', 1, 50000, 2020),
(3, 'Priya', 3, 60000, 2018),
(4, 'Sneha', 2, 80000, 2021),
(5, 'Vikas', 4, 55000, 2017),
(6, 'Anita', 3, 45000, 2022),
(7, 'Rohan', 5, 72000, 2019),
(8, 'Kiran', 1, 65000, 2023),
(9, 'Neha', 2, 90000, 2020),
(10, 'Sanjay', 3, 40000, 2016),
(11, 'Meena', 4, 75000, 2022),
(12, 'Arjun', 5, 48000, 2021),
(13, 'Pooja', 2, 85000, 2023),
(14, 'Nikhil', 6, 52000, 2019);


INSERT INTO Project (pId, pName, empId, budget) VALUES
(101, 'AI System', 4, 120000),
(102, 'HR Portal', 2, 40000),
(103, 'Sales Tracker', 3, 70000),
(104, 'Finance App', 5, 90000),
(105, 'Marketing Tool', 7, 60000),
(106, 'IT Security', 9, 150000),
(107, 'Support Desk', 14, 30000),
(108, 'Mobile App', 1, 80000),
(109, 'Data Analytics', 13, 110000);


-- Write a query to find employees whose salary is greater than the average salary of all employees.
SELECT *FROM employee
 WHERE salary > (SELECT AVG(salary) FROM employee );

-- Write a query to display employees who work in the department named 'HR'.
SELECT *FROM employee 
WHERE deptId IN (SELECT deptId 
FROM Department WHERE deptName='HR');

-- Find employees whose salary is greater than the minimum salary in the Employee table.
SELECT *FROM employee 
WHERE salary > (SELECT MIN(salary) FROM employee);

-- Display employees whose department location is 'Mumbai'.
SELECT *FROM employee 
WHERE deptId IN (SELECT deptId 
FROM Department WHERE location = 'Mumbai');

-- Find employees who are working on any project.
SELECT *FROM employee 
WHERE empId IN (SELECT empId FROM Project);

-- Display employees whose salary is equal to the maximum salary in the Employee table.
SELECT *FROM employee WHERE 
salary = (SELECT MAX(salary) FROM Project);


SELECT *FROM employee;
SELECT *FROM department;
SELECT *FROM Project;