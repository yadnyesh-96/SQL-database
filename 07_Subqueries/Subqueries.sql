

USE college;

CREATE TABLE project(
pId INT(5) PRIMARY KEY,
pName VARCHAR(200),
location VARCHAR(200)
);


CREATE TABLE employee(
eId INT(5) PRIMARY KEY,
eName VARCHAR (200),
salary INT(5),
pId INT(5),
FOREIGN KEY(pId) REFERENCES project(pId)
);


-- Data for 'project' table (6 rows)
INSERT INTO project (pId, pName, location) VALUES 
(101, 'Apollo', 'Mumbai'),
(102, 'Phoenix', 'Bangalore'),
(103, 'Titan', 'Delhi'),
(104, 'Starlight', 'Pune'),
(105, 'Nebula', 'Hyderabad'),
(106, 'Orion', 'Chennai');

-- Data for 'employee' table (7 rows)
INSERT INTO employee (eId, eName, salary, pId) VALUES 
(501, 'Arjun Mehta', 45000, 101),
(502, 'Sana Khan', 55000, 101),
(503, 'Rahul Sharma', 48000, 102),
(504, 'Priya Das', 62000, 103),
(505, 'Amit Verma', 42000, 104),
(506, 'Neha Iyer', 58000, 105),
(507, 'Vikram Singh', 51000, 106);


-- WA SQL Query to find the second highest salary of employee




SELECT *FROM project;
SELECT *FROM employee;


