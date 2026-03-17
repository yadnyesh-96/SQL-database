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
    loignDATE DATE,
    userID INT(5) UNIQUE,
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
---
**2. ONE TO MANY Association 🔂 :**
- **ONE TO MANY Association** Means the single parent record can have more than one child record ir parent record id can appeared more than one in child table called as one to many Association.

**How to implement ONE TO ONE Association Practically:**
We have **Example :** Single Product can hace Multiple Customers.
```
CREATE TABLE PRODUCTS(
    product_ID INT(5) PRIMARY KEY,
    productName VARCHAR(200),
    productDESC VARCHAR(200)
);

CREATE TABLE CUSTOMERS(
    cust_ID INT(5) PRIMARY KEY,
    custName VARCHAR(200),
    custContact VARCHAR(200),
    productID INT(5),
    FOREIGN KEY(productID) REFERENCES PRODUCT(productID)
);
```

**3. MANY TO ONE Association 🔂 :**
- If we think Opposite of **ONE TO MANY** means single Product can have more than on customers so we can say more than one customers have single product.

**4. MANY TO MANY Association 🔂 :**
- **MANY TO MANY Association** means _Table-A_ record can appear more than onw with _Table-B_ and _Table-B_ record can appear more than one with _Table-A_ called as MANY TO MANY Association.
- ONE TO ONE + MANY TO ONE = MANY TO MANY
- IF we want to implement practically in Relational Database Management System (RDBMS) we have to create on implementer table which contains the only foreign keys. 
- --