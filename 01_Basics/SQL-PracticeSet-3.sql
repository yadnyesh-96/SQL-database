
USE company;

CREATE TABLE employee(
	emp_id INT(5) PRIMARY KEY UNIQUE,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE);
    
-- SQL query to insert a new employee with emp_id 6, emp_name 'Rohan', department 'IT', salary 30000, and join_date '2024-02-01'.
INSERT INTO employee VALUES(6,'Rohan','IT',30000,'2024-02-01'); 

--  SQL query to insert two new employees:
-- (7, 'Sneha', 'HR', 26000, '2023-11-10')
-- (8, 'Vikram', 'Finance', 38000, '2022-08-18').

INSERT INTO employee(emp_id,emp_name,department,salary,join_date)
VALUES
(7,'Sneha','HR',26000,'2023-11-10'),
(8,'Vikram','Finance',38000,'2022-08-18');

-- SQL query to insert a new employee with emp_id 9, emp_name 'Anjali', department 'Marketing', salary 42000, and today’s date as join_date.
INSERT INTO employee VALUES(9,'Anjali','Marketing',42000,'2026-02-21');

-- SQL query to insert a new employee whose salary is greater than 50000.
INSERT INTO employee VALUES(10,'Harshal','Merchant-Navy',60000,'2025-06-21');

-- SQL query to insert a record for emp_id 11, emp_name 'Rahul', department 'IT', salary 35000, and join_date '2023-06-25'.
INSERT INTO employee VALUE(11,'Rahul','IT',35000,'2023-06-25');

--  SQL query to display all records from the Employee table.
SELECT *FROM employee;

-- SQL query to display only emp_name and salary of all employees.
SELECT emp_name, salary FROM employee;

-- SQL query to display employees working in the 'IT' department.
SELECT *FROM employee WHERE department='IT';

-- SQL query to display employees whose salary is greater than 30000.
SELECT *FROM employee WHERE salary>30000;

-- SQL query to display employees who joined after '2022-01-01'.
SELECT *FROM employee WHERE join_date = '2022-01-01';

-- SQL query to display distinct department names from the Employee table.
SELECT DISTINCT department FROM employee;

--  SQL query to display employees whose salary is between 25000 and 40000.
SELECT *FROM employee WHERE salary BETWEEN 25000 AND 40000;

--  SQL query to display employees whose salary is not equal to 35000.
SELECT *FROM employee WHERE salary NOT IN(35000);

-- SQL query to display employees who work in 'HR' or 'IT' department.
SELECT *FROM employee WHERE department IN('HR','IT');

-- SQL query to display employees whose name starts with letter 'P'.
SELECT *FROM employee WHERE emp_name LIKE 'P%';

-- SQL query to display employees whose salary is greater than or equal to 30000 and department is 'IT'.
SELECT *FROM employee WHERE salary>=30000 AND department='IT';

--  SQL query to display employees whose salary is less than 30000 or department is 'Finance'.
SELECT *FROM employee WHERE salary<30000 AND department='Finance';


-- SQL query to display employees whose name contains the letter 'a'.
SELECT *FROM employee WHERE emp_name LIKE '%a%';


-- SQL query to increase salary of all employees in the 'IT' department by 2000.
 UPDATE employee SET salary=salary+2000 WHERE department='IT';

-- SQL query to update department of employee with emp_id 3 to 'HR'.
UPDATE employee SET department='HR' WHERE emp_id=3;


INSERT INTO employee VALUES(5,'Amit','Intervewet',150000,'2004-01-18');

-- SQL query to update salary of employee named 'Amit' to 30000.
UPDATE employee SET salary=30000, department='HR' WHERE emp_name='Amit';

--  SQL query to change join_date of employee with emp_id 5 to '2024-01-01'.
UPDATE employee SET join_date = '2024-01-01' WHERE emp_id=5;

-- SQL query to increase salary by 10% for employees in 'HR' department.
UPDATE employee SET salary = salary*0.10 WHERE department='HR';

--  SQL query to delete employee whose emp_id is 2.
DELETE FROM employee WHERE emp_id=5;

-- SQL query to delete employees from 'Marketing' department.
DELETE FROM employee WHERE department='Marketing';

-- SQL query to delete employees whose salary is less than 25000.
DELETE FROM employee WHERE salary<25000; 

-- SQL query to find the total salary of all employees.
SELECT sum(salary) FROM employee;

-- SQL query to find the average salary of employees in 'IT' department.
SELECT avg(salary) FROM employee WHERE department='IT';

-- SQL query to find the maximum and minimum salary from the Employee table.
SELECT max(salary) AS Maximum , min(salary) AS Minimum FROM employee;

--  SQL query to display all employees ordered by salary in descending order
SELECT *FROM employee ORDER BY salary DESC;

-- SQL query to display employees whose salary is greater than or equal to 30000 and less than or equal to 50000, ordered by salary ascending.
SELECT *FROM employee WHERE salary>=30000 AND salary<=50000 ORDER BY  salary ASC;






SELECT *FROM employee;