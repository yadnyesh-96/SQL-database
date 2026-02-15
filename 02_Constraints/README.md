>## **Constrints in SQL** 

Constraint are the some rules and regulation which can apply on table column at the time of table creation.
- **A. Verify data before insert in database table.**
- **B. Maintain Uniquness in data.**
- **C. Avoid to insert wrong data in database table.**
- **D. Maintain relationship between two tables.**
- **E. To maintain the consistency in data.**
---
- >**Types of constraints in SQL**
### 1. **Not null** : 
- When we use the not null constraints with column then we cannot store null value in column bacause of every column by default has null Value.  <br>
- **Syntax** : create table tablename (columnname datatype(size) not null, columnname datatype(size)not null);
```
create table employee(eid INT(5),name VARCHAR(200)not null,salary INT(5));
```
![alt text](image.png)
---
### 2. **Unique** :
- Unique constraints  is used to store the unique value in column means we can not store duplicate values in column using unique constraints .<br>
- **Syntax** : create table tablename (columnname datatype(size)unique...);<br>
- **Example** :  Suppose create table name as employee with column id,name,email,contact , salary and here contact and email should be unique and name should not null.
![alt text](image-1.png)
---
### 3. **Primary** :
- Primary key constraints  is by default not null and unique means we mark any column as primary key then we cannot store null value in it and duplicate value in it.<br>
- **Syntax** : create table tablename (columnname datatype(size)primary key...);
- **Example** :  we want to create employee table and every employee id should be unique and not null ,name not null, email unique and not null and contact unique and not null.
```
create table employee(eid int(5) primary key, name varchar(200) not null, email varchar(200) not null unique, contact varchar(200) not null unique);
```
![alt text](image-2.png)
---
> **What is the difference between Primary key and Unique key constraints ?**


| Primary Key | Unique Key |
|-------------|------------|
| We can create only one column as primary key in whole table. | we can create more than one column as unique key in single table. |
| Primary is by default not null and unique. | Unique is not by default null means can hold null value. |
| Primary key use by default cluster index. | Unique key use cluster or secondary index. |
| Primary key can use as a reference in another table i.e mark a foregin key and it is recommended. | Unique key is not recommended as foregin key in child table. |

---
### 4. **Foregin Key** :
- Foregin key constraints is used for maintain the relationship between two tables means we can use primary key of some another table as foregin key in other table and primary key column table known as parent table and foregin key column table known as child table.
- **How to create foregin key column**:
- **Syntax** : create table tablename(columnname datatype(size),foregin key (columname)reference paranttablename(primarykey column));
- **Example** :
![alt text](image-3.png)