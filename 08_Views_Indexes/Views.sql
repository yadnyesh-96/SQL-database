
-- we use the exidting database which name as july 2025
USE july2025;

-- display the existing table employee table Data from july2025 database
SELECT *FROM employee;
 
-- create view 
CREATE VIEW empView AS SELECT empId,empName FROM employee;

-- Use of created view or excute the view 
SELECT *FROM empView;

-- display the existing table departement table Data from july2025 database
SELECT *FROM dept;

-- we have the department table and employee table and in view we can hide complex query.
CREATE VIEW deptIdwithEmp AS SELECT d.deptId, e.empId, e.empName FROM dept d INNER JOIN employee e ON d.deptId=e.deptId;

-- Execute deptIdwithEmp view 
SELECT *FROM deptIdwithEmp;

-- We can also perform the updation and deletion by view on table

-- delete employee table data using id by view
DELETE FROM empView WHERE empId=1; 

-- update table record or colmun using view
UPDATE empView SET empName='Ramesh' WHERE empId=2;

SELECT *FROM empView;

-- we want to drop view or delete view we have following command 
DROP VIEW empView;

-- we have to update view means modify existing view we have following command
CREATE OR REPLACE VIEW empview AS SELECT empId,empName FROM employee;