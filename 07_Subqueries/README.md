# **SubQuery** 
SubQuery means query within query called as subquery or nested query
---
#### **There are two types of subquery**
- **Inner Query or nested query :**<br>
  Inner query means when nested query executes first then or inner query execute first and its result provided as output to outer query called as inner query.

- **Co-related SubQuery :** <br>
  co-related subquery means outer query referes use in inner query called Co-related SubQuery.
---    

```
If we have to work with subquery we have to conjuction operators like as =,<,>,!=,IN,exits,any,all,etc.,
```
---
**Syntax :** SELECT outerQuery CONDITION inner query 

### **Examples:**
```
-- 1. project table 

CREATE TABLE project(
pId INT(5) PRIMARY KEY,
pName VARCHAR(200),
location VARCHAR(200)
);

-- 2. employee table

CTEATE TABLE employee (
eId INT(5)PRIMARY KEY,
eName VARCHAR(200),
salary INT(5),
pId INT(5), FOREIGN KEY (pId) REFERENCES project(pId)
);

```

## Write a SQL Query to find the second highest salary of employee
```
SELECT *FROM employee WHERE MAX(salary);
```

## **Co-related SubQuery :** <br>

when we use the outer query reference in inner query called as co-related subqueries  and normally we use the co-related sub-query using exits operator.

**Syntaxt for EXIT operator :** select outerquery tablename ref exits (inner query outertable ref);

- **Example**: Write SQL Query to find employee who at least work on single project 
```
SELECT *FROM employee e WHERE EXISTS (SELECT pId FROM project p WHERE p.pId=e.pId);
```

### What is the difference Between **IN** and **EXISTS** operator ?
1. If we use the **IN** operator then SQL engine typically evalutes all values in the list or sub query use the result subquery for comparison and exitst operator compare outer query result with inner query and if find match return ture and stops the execution and if find not match then return false.
