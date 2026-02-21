
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
