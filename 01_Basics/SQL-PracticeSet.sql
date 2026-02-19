USE july2025;

CREATE TABLE team(
	P_Id INT(5) PRIMARY KEY AUTO_INCREMENT,
    p_Name VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL,
    contact VARCHAR(200) NOT NULL,
    stat VARCHAR(200) NOT NULL,
    run_Record INT(5) NOT NULL,
	salary INT(5)NOT NULL );

DESC team;

-- Rename the column name 
ALTER TABLE team RENAME COLUMN stat TO state;

-- Perform Following Task
-- Insert the 20 player’s record in table and perform following task

INSERT INTO team (p_Name, email, contact, state, run_Record, salary) VALUES
('Aditya', 'aditya@gmail.com', '9876543210', 'Maharashtra', 2500, 15000),
('Vaibhav', 'vaibhav@gmail.com', '9876543211', 'Punjab', 1800, 12000),
('Kunal', 'kunal@gmail.com', '9876543212', 'Gujrat', 22000, 30000),
('Sachin', 'sachin@gmail.com', '9876543213', 'Delhi', 5000, 20000),
('Rohit', 'rohit@gmail.com', '9876543214', 'Maharashtra', 15000, 25000),
('Virat', 'virat@gmail.com', '9876543215', 'Delhi', 3000, 18000),
('Rahul', 'rahul@gmail.com', '9876543216', 'Punjab', 800, 5000),
('Hardik', 'hardik@gmail.com', '9876543217', 'Gujrat', 12000, 22000),
('Ram', 'ram@gmail.com', '9876543218', 'Maharashtra', 1000, 4000),
('Rupali', 'rupali@gmail.com', '9876543219', 'Delhi', 2700, 9000),
('Dinesh', 'dinesh@gmail.com', '9876543220', 'Punjab', 6000, 14000),
('Rajesh', 'rajesh@gmail.com', '9876543221', 'Maharashtra', 3500, 16000),
('Suresh', 'suresh@gmail.com', '9876543222', 'Delhi', 21000, 28000),
('Amit', 'amit@gmail.com', '9876543223', 'Gujrat', 1900, 7000),
('Priya', 'priya@gmail.com', '9876543224', 'Maharashtra', 23000, 32000);

-- display records 
SELECT *FROM team;

-- show the player records whose state is Maharashtra
SELECT *FROM team WHERE state = 'Maharashtra';

-- show the player records whose state is Maharashtra, Punjab, gujrat and Delhi?
SELECT *FROM team WHERE state = 'Maharashtra' OR state='Punjab' OR state='gujrat' OR state='Delhi';
-- we also display same these data by using the IN BETWEEN Clause.
SELECT *FROM team WHERE state IN('Maharashtra','Punjab','gujrat','Delhi');

-- show the player record run wise in descending order
SELECT *FROM team ORDER BY run_Record DESC;

-- Query show the player record whose state is not Maharashtra
SELECT *FROM team WHERE state != 'Maharashtra';

-- Query show the player record whose state is not maharashtra, Punjab and Delhi
SELECT *FROM team WHERE state NOT IN('Maharashtra','Punjab','Delhi');

-- Query show the player record whose run record and salary is greater arranges player record in descending order.
SELECT *FROM team ORDER BY run_Record DESC, salary DESC;

-- Question on Aggregate Functions
-- Query to count the number of employee from table.
SELECT count(P_Id)  FROM team;

-- Query to count the employee whose salary between 3000 to 20000
SELECT count(P_Id) FROM team WHERE salary IN (3000,20000);

--  Query to calculate the sum of all employee salary from employee table.
SELECT sum(salary) FROM team;

-- Query to calculate the sum of employee except the dinesh and rajesh
SELECT sum(salary) FROM team WHERE p_Name IN('Dinesh','rajesh');

-- Query to count the employee whose salary greater than 3000 and less than 20000 and whose name is not a ram and rupali.
SELECT count(P_Id) FROM team WHERE salary>3000 OR salary<20000;

-- Query to find the minimum salary of employee
SELECT min(salary) FROM team;

-- Query to find the maximum salary of employee from employee table.
SELECT max(salary) FROM team;

-- Query to find the average salary of employee from employee table
SELECT avg(salary) FROM team;