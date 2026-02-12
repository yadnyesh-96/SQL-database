## SQL 
> <b>Whast is the SQL ?</b><br>

SQL is a Structure Query Language and it is basically programming Language which is basically works with Realtional Database mangement System.

---
> <b>What is the database managment system ?</b><br>

Database is the <b>technique</b> where we can <b>Organize or Store</b> the data permanently for manage easily as well as access easily to user as well as database managament system provide relationship  between data internally.

---

><b>Why use the database or what are the benifits of a database ?
- Data Security :   </b>DBMS -(DataBase Managment System) enhance data security through <b>access control</b> and <b>encryption</b> as well as provide privacy policies and prevents unauthorized access when user numbers grow as well as provide the limited user access.

- <b>Data Integration :</b> We can easily integrated data with other application by maintaining centralized database.

- <b>Avoid Redundancy of data :</b>  With the help of database we can avoid the duplication of data from database by using the normalization technique if we think about the RDBMS (Relational Database Mangament System).

- <b>Data Orgainization</b> : DBMS can provide the systematice approach to Organize data internall structure wat the benefit is user can easily understand data and can easily retrieve or perform operation on database.

- <b>Efficient data access and retrieva</b> : database provide easliy retrieval of data from databse using query or indexing technique etc.,.

- <b>Data consistency and accurancy</b> : DBMS enforce integrity constraints to maintain the valid data means we can apply rules and regulation on database at the time of storage or maintain the relationship between two tables using primary key and foregin key constraints in table etc., if we think about RDBMS.

----

<br>

> **How many types of databases ?**

1. `Realtional Databse` : 
<br>Relational database means a database can orgainize or store data in the form of tables in row and column format.
![alt text](image.png)

2. `Hierarchical database` :
<br>The database can manage data in the tree structur/format form of parent and child relationship called as Hierarchical database.
if we thinking the file system of operating system it is example of hirarchical database.

3. `Object Oriented database` :  
<br>Database can store in the form of object attribute and values called as object oriented database.
<br>Example of object Oriented database in MongoDB:
![alt text](image-1.png)

4. `Cloud database `:
<br>Database which is not present on user machine and accessible and modified by cloud.

5. `Distributed database`:
<br>Distributed database means we have multiple databases present on remote location and communicating with each other called a distributed database.

----

Now we want to work with Relational database management or RDBMS<br>
if we want to work with RDBMS we have multiple tools vendors <b>eg., MYSQL, Oracle, DB2, PostgreeSQL.</b><br>
Now we Work with MYSQL

---


> <b>What is MYSQL ?</b>
<br>
MYSQL is a database tool wich provides an environment for us to work with Relational Database Management Systems (RDBMS).
<br>
---
> <b>What is the difference between MYSQL, SQL and database?</b>
- MYSQL - is tool reponsible for provide environment to work with relational database.
- SQL - It is Programming Language work with relational database management concept.
- Database - Database is concept or it is technique where we can Orgainize or store our data called as database.
---
> <b>What is the Database in RDBMS?</b>
<br>Collection of tables called database.
1. Create Database:
    ```sql
    create database july2025;
    ```

2. Show the Database:
    ```sql
    show databases;
    ```
3. Use database:
    ```sql
    use july2025;
    ``` 

      ![alt text](image-3.png)
      ---
    once we create database we can work with database and for that we have following commands to work with user database:
    - A. <b>DDL</b>
    - B. <b>DML</b>
    - C. <b>DQL</b> 
    - D. <b>TCL</b>
    - E. <b>DCL</b>

---


> A. DDL : Data Definition Language. <br>

- Basically Data definition Language it is used to for **create table, procedure, trigger, function, view database, as well as drop & alter database table,etc.**
- DDL command works with **table structure**.
---
1. **Create** : It is used for create table, create database, create procedure etc.<br>
**Sysntax** : create database database_name; <br>
**ex.** 
```
create database july2025;
```
![alt text](image-4.png)

**Sysntax** : create table table_name; <br>
**ex.** 
```
create table student(std_Id INT(3),std_name VARCHAR(50),std_fees INT(4));
```
![alt text](image-5.png)
---
2. **Desc** : This command is used for describe the table structure like as column name in table and column data type, column size etc.,<br>
**Sysntax** : desc table_name; <br>
**ex.** 
```
desc student;
```
![alt text](image-6.png)
---
3. **alter** : alter is used for modified the column name, add new column, remove column from table, change column type or size, etc.,<br>
*alter commands has some sub-commands*
-   Add : this option to help us to add a new column in the database table after the table creation.<br>
**Sysntax** : alter table table_name column_name datatype(size);<br>
**ex.** 
```
alter table student add std_dept VARCHAR(60);
```
