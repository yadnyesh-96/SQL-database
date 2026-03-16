## **Types of Relationship or Association  in table** 🏛️<br>(**and Practical Implementation using a MYSQL**)

### **What is the Association and Relationship in table and why use it ?**
- In Relational Database **Association** means how the database is connected with another table in database called association.
- Noramally association can achive by using a **primary key** and **foreign key** concept
  
---
### _**Types of Association in MYSQL**_

**1. ONE TO ONE Association 🔂 :**
- ONE TO ONE Association means the one Record/row present in _Table-A_ or _Parent Table_ must be present at a **only once** in _child table_ or _Table-B_ .
- Means we cannot be duplicated data or record row in child table.<br>
  
**How to implement ONE TO ONE Association Practically:**
- If we want to achive the one to one association practicall we have to create the **Foreign key** with **unique constraints** means foreign key build the relationship between the parent table and unique not allowed dublicated child data.
- So it is indirectly one to one association.

```
CREATE TABLE USERS (
    userID INT(5)PRIMARY KEY AUTO_INCREMENT, userName VARCHAR(200))
    ;

CREATE TABLE LOGINS(
    loginID INT(5)PRIMARY KEY,
    loignDATE DATE,userID INT(5),
    FOREIGN KEY(userID)
    REFERENCES USERS(userID)
    );

INSERT INTO USERS
VALUES
(1,'Ram'),
(2,'Shyam'),
(3,'Ganesh');

INSERT INTO LOGINS
VALUES
(11,SYSDATETIME(),1),
(12,SYSDATETIME(),2),
(13,SYSDATETIME(),3);   
```