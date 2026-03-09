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
