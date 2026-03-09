
-- we use the exidting database which name as july 2025
USE july2025;

-- display the existing table employee from july2025 database
SELECT *FROM employee;

-- create view 
CREATE VIEW empView AS SELECT empId,empName FROM employee;

-- Use of created view or excute the view 
SELECT *FROM empView;