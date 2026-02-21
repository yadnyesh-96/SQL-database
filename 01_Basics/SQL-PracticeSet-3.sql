,
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

