
CREATE DATABASE test25;

USE test25;

CREATE TABLE Employee (
	emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT(5),
    experience INT(5),
    city VARCHAR(30),
    joining_date DATE
);

INSERT INTO Employee
VALUES
(1,'Nitya','HR',40000,4,'Pune','2024-01-01'),
(2,'Sagar','IT',5000,2,'Nasik','2024-02-21'),
(3,'Vikas','Manger',3000,1,'Sambhajinagar','2024-02-28'),
(4,'Pooja','HR',50000,5,'Pune','2024-03-05'),
(5,'Meena','HR',4000,2,'Banglore','2024-01-02'),
(6,'Neha','Tester',5000,3,'Pune','2024-02-5'),
(7,'Priya','HR',3500,1,'Mumbai','2024-04-01'),
(8,'Kiran','IT',40000,3,'Mumbai','2024-06-05'),
(9,'Rahul','IT',60000,6,'Nasik','2024-06-02'),
(10,'Sneha', 'Analyst',4500,2,'Delhi','2024-07-11');


SELECT *FROM Employee;


TRUNCATE Employee;

-- 1.Display all employee details whose salary is greater than 40000. 
SELECT *FROM Employee WHERE salary>40000;


-- 2.Display employee names and salary who belong to 'IT' department.
SELECT *FROM Employee WHERE department='IT';

-- 3.Show employees whose experience is between 3 and 7 years.
SELECT *FROM Employee WHERE  experience BETWEEN 3 AND 7;

-- 4.Display employees who are not from 'Pune'.
SELECT *FROM Employee WHERE city NOT IN ('pune');

-- 5.Find the total salary of all employees.
SELECT sum(salary) AS Total_Salary FROM Employee; 

-- 6.Find the average salary of employees in 'HR' department.
SELECT avg(salary) AS avg_sal FROM Employee WHERE department='HR';


INSERT INTO Employee
VALUES
(11,'Ajay','Sales',32000,3,'Pune','2024-01-01'),
(12,'Viki','Sales',18000,2,'Jalgaon','2025-02-21'),
(13,'Pauranima','Sales',25000,3,'Solapur','2024-05-28'),
(14,'Disha','Sales',28000,3,'Pune','2024-03-05');
-- 7.Count the number of employees working in 'Sales' department.
SELECT count(emp_id) AS sales_emp FROM Employee WHERE department='Sales';

-- 8.Display the maximum salary in the company.
SELECT MAX(salary)AS Maximum_Sal FROM Employee;

-- 9.Show employee name and salary in descending order of salary. 
SELECT emp_name, salary FROM Employee ORDER BY emp_name,salary DESC;

-- 10.Display department wise total salary using GROUP BY.
SELECT department,sum(salary) FROM Employee GROUP BY department;

INSERT INTO Employee 
VALUES
(15,'Nandini','HR',80000,7,'Banglore','2024-01-02'),
(16,'Hemraj','Tester',70000,5,'Pune','2024-02-5'),
(17,'Kishor','HR',65000,6,'Mumbai','2024-04-01'),
(18,'Suraj','IT',90000,3,'Mumbai','2024-06-05'),
(19,'Harshal','IT',70000,6,'Nasik','2024-06-02'),
(20,'Dhananjay', 'Analyst',40500,2,'Delhi','2024-07-11');

-- 11.Display department wise average salary where average salary is greater than 50000.
SELECT department,avg(salary) FROM Employee  GROUP BY department HAVING avg(salary)>50000;

-- 12.Count number of employees in each city and display only those cities having more than 2 employees.
SELECT city,count(emp_id) FROM Employee GROUP BY city HAVING count(emp_id)>2;

-- 13.Display department wise maximum salary.
SELECT department,MAX(salary) FROM Employee GROUP BY department;

-- 14.Show departments where total salary is greater than 200000.
SELECT department,sum(salary) FROM Employee GROUP BY department HAVING sum(salary)>200000;

-- 15.Display city wise employee count in descending order of employee count.
SELECT city,count(emp_id) FROM Employee GROUP BY city ORDER BY count(emp_id) DESC;