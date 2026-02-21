
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

-- SQL query to display employees whose department is not 'HR' and salary is greater than 25000.
SELECT *FROM employee WHERE department!='HR' AND salary>=25000;

-- SQL query to display employees whose name does not start with 'A' and salary is greater than 30000.
SELECT *FROM employee WHERE emp_name NOT LIKE 'A%' AND salary>30000;

-- SQL query to display employees who joined between '2021-01-01' and '2023-12-31', ordered by join_date descending.
SELECT *FROM employee WHERE join_date BETWEEN '2021-01-01' AND '2023-12-31' ORDER BY join_date DESC;

-- SQL query to display employees whose salary is divisible by 5000.
SELECT *FROM employee WHERE salary%5=0;

--  SQL query to increase salary by 15% for employees who joined before '2022-01-01'.
UPDATE employee SET salary = salary+(salary*0.15) WHERE join_date<'2022-01-01';

-- SQL query to decrease salary by 5% for employees whose department is 'Finance'.
UPDATE employee SET salary = salary-(salary*0.05) WHERE department='Finance';

-- SQL query to update the department to 'Senior IT' for employees whose salary is greater than or equal to 45000.
UPDATE employee SET department = 'Senior IT' WHERE salary>=45000;

-- SQL query to update salary to 30000 for employees whose salary is less than 25000.
UPDATE employee SET salary=30000 WHERE salary<33000;

-- SQL query to delete employees who joined before '2021-01-01'.
DELETE FROM employee WHERE join_date<'2021-01-01';

SELECT *FROM employee;

-- SQL query to delete employees whose department is not 'IT' and salary is less than 28000.
DELETE FROM employee WHERE dEpartment='IT' AND salary<28000;

-- SQL query to display the total salary department-wise using GROUP BY.
SELECT department, sum(salary) FROM employee GROUP BY department;

--  SQL query to display the average salary department-wise and order the result by average salary descending.
SELECT department, avg(salary) AS avg_salary FROM employee GROUP BY department ORDER BY avg_salary DESC;

-- SQL query to display the count of employees in each department.
SELECT department, count(emp_id) FROM employee GROUP BY department;

-- SQL query to display departments having more than 2 employees using GROUP BY and HAVING.
SELECT department, count(emp_id) FROM employee GROUP BY department HAVING count(emp_id)>=2;

--  SQL query to display the maximum salary department-wise.
SELECT department, max(salary) FROM employee GROUP BY department;

-- SQL query to display departments where the minimum salary is greater than 30000.
SELECT department, min(salary) FROM employee GROUP BY department HAVING min(salary)>30000;

-- SQL query to display employees whose name contains exactly 4 characters.
SELECT *FROM employee WHERE emp_name LIKE '_ _ _ _%';

-- SQL query to display employees whose name ends with a vowel.
SELECT *FROM employee WHERE emp_name LIKE '%aeiou';

-- SQL query to display employees ordered first by department ascending and then by salary descending.
s
SELECT *FROM employee;