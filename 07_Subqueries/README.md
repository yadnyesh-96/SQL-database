## **Views** 🎥

> Views is a same like as virtual table in **SQL** and create using select command, It does not create command physically but display data stored data in underlying tables.
---
### Why use a view if you have a table ?
---
- A. **To Provide table data Security** : Means we do not provide complete table access just we provide particular column access to the table using view.
- B. **To hide the complex queries** : Means if we have some joins or some subqueries then we can hide them in view so the end user or developer does not need to write complex query just execute view then internally complex query get executed.

### How to create view 
**Syntax :** create view viewname as select query;
```
CREATE VIEW empView AS SELECT empId,empName FROM employee;
```

- We can hide the complex query in view 
```
CREATE VIEW empDept AS SELECT d.deptName,e.empId,e.empName FROM dept d INNER JOIN employee e ON d.deptId=e.deptId;
```
---

### We can also perform the updation and deletion by view on table
- delete employee table data using id by view
```
DELETE FROM empView WHERE empId=1;
```
- We can update table record or colmun using view
```
UPDATE empView SET empName='Ramesh' WHERE empId=2;
```

### If we have to drop view or delete view we have following command
**Syntax** : DROP VIEW viewname;
```
DROP VIEW empName;
```


### If we have to update view means modify existing view we have following command
**SYntax** : CREATE OR REPLACE VIEW viewname as SELECT STATEMENT
```
CREATE OR REPLACE VIEW empview AS SELECT empId,empName FROM employee;
```

