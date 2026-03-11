
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