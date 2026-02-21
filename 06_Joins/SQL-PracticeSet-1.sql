CREATE DATABASE Orgainization;

USE Orgainization;

CREATE TABLE project(
	project_Id INT(5) PRIMARY KEY,
    project_title VARCHAR(100),
    location VARCHAR(100),
    budget DECIMAL(12,2)
);

CREATE TABLE employee(
	emp_Id INT(5) PRIMARY KEY,
    emp_Name VARCHAR(100),
    designation VARCHAR(100),
    salary DECIMAL(10,2),
    manager_Id INT(5),
    project_Id int(5),
    FOREIGN KEY(project_Id) REFERENCES project(project_Id)
);

INSERT INTO project VALUES
(1, 'Banking App', 'Mumbai', 500000),
(2, 'E-Commerce', 'Pune', 750000),
(3, 'AI Chatbot', 'Bangalore', 600000),
(4, 'Hospital System', 'Delhi', 400000);

INSERT INTO employee VALUES
(101, 'Amit',   'Developer', 45000, 201, 1),
(102, 'Neha',   'Tester',    35000, 201, 1),
(103, 'Rahul',  'Developer', 50000, 202, 2),
(104, 'Sneha',  'Analyst',   30000, 202, 2),
(105, 'Kiran',  'Developer', 55000, 203, 3),
(106, 'Rohit',  'Tester',    32000, 203, 3),
(107, 'Pooja',  'HR',        28000, NULL, NULL),  -- No project
(108, 'Sagar',  'Support',   26000, NULL, NULL),  -- No project
(109, 'Vikas',  'Manager',   70000, NULL, 4),
(110, 'Meena',  'Developer', 48000, 109, 4);





SELECT * FROM project;
SELECT * FROM employee;