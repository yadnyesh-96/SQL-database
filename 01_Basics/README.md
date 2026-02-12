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


> A. **DDL** : Data Definition Language. <br>

- Basically Data definition Language it is used to for **create table, procedure, trigger, function, view database, as well as drop & alter database table,etc.**
- DDL command works with **table structure**.
---
1. **Create** : It is used for create table, create database, create procedure etc.<br>
**Syntax** : create database database_name; <br>
**ex.** 
```
create database july2025;
```
![alt text](image-4.png)

**Syntax** : create table table_name; <br>
**ex.** 
```
create table student(std_Id INT(3),std_name VARCHAR(50),std_fees INT(4));
```
![alt text](image-5.png)
---
2. **Desc** : This command is used for describe the table structure like as column name in table and column data type, column size etc.,<br>
**Syntax** : desc table_name; <br>
**ex.** 
```
desc student;
```
![alt text](image-6.png)
---
3. **alter** : alter is used for modified the column name, add new column, remove column from table, change column type or size, etc.,<br>
*alter commands has some sub-commands*
-  1. Add : this option to help us to add a new column in the database table after the table creation.<br>
**Syntax** : alter table table_name column_name datatype(size);<br>
**ex.** 
```
alter table student add std_dept VARCHAR(60);
```
![
](image-7.png)

---
-  2. Modify : Using a modify option we can change only size and data type of column.<br>
**example** : if we think about above table we have *std_dept* column with data type *VARCHAR* and size *30* we want to modified *std_dept* size to *50* . <br> 
**Syntax** : alter table table_name column_name datatype(size);<br>
**ex.** 
```
alter table employee modify std_dept int(50);
```
![alt text](image-8.png)
---
-  3. drop : drop is used to remove the column from database table. <br>
**example** : if we think about the above table we have the *std_dept* column and we want to remove it from the student table. <br>
**Syntaxt** : alter table table_name drop columnname; <br>
**ex**
```
alter table student drop std_dept;
```
![alt text](image-9.png)

-   4. Rename : rename option is used for change the name of column. <br>
**Syntax** : alter table tablename rename column oldcolumnname to newcolumnname. <br>
**ex**: if we think about above table student we have *std_name* so we want to modify *std_name* to *std_nm* . <br>
```
alter table student rename column std_name to std_nm;
```
![alt text](image-10.png)
---
4. **Drop** : drop statement is used for the drop the table or drop or delete database, procedure, trigger, function, index etc., <br>
**Syntax** : drop table tablename;
```
drop table student
```
![alt text](image-11.png)
---
5. **truncate**: This statement is used in database to delete the table data. <br>
**Syntax** : truncate tablename;
```
truncate tablename;
```
![alt text](image-12.png)
---
> B. **DML** : Data Manipulation Language. <br>
- Data manipulation langauge is work with a table data.
- Basically Data Manipulation Language is used to **Insert** , **Update** and **delete** data in database table.
---
-   1. **Insert** : Iset is used used for inserting the data in the database table. <br>
     - **There are two types of Insert commands** :
     >1. **Wild card insert** : wild card insert means we can isert **all column data** or **provide value to all column** in **row** called as wild card insert. <br>
     **Example :** Suppose we have student table with three field *std_Id* , *std_name* and *std_address* and we want to store data in that. 
     ```
    insert into student values(1,'Aditya','Pune');
     ```
     ![alt text](image-13.png)
     >2. **Partial insert** : partial insert means we can provide value to a specific column in row called **_Partial insert_**.<br>
     **Syntax** : insert into tablename (column1,column,column...n) values(value1,value2,va;ue...n);<br>
     **example** : suppose cansider we have student table with three column *std_Id* , *std_name* and *std_address* but we want to provide value to *std_Id* and *std_name* only not to *std_address*.
     ```
     insert into student (std_Id,std_name)values(5,'Yash');
     ```
     ![alt text](image-14.png)
---
-   2. **Delete** : delete data from database table or data from table. <br>
    - **There are two types of Insert commands** :
     >1. **Wild card delete** : delete all record from table. <br>
     **Syntax** : delete from tablename; <br>
     **example** : delete from student; : delete all records from table.
     ```
    delete from student;
     ```
    ![alt text](image-16.png)

     >2. **Partial delete** : We can achive using *WHERE* consdition means we can delete specific records by using condition. <br>
     **Syntax** : delete from tablename where condition; <br>
     **example** : delete from student where std_Id=6;: delete all records from table.
     ```
    delete from student where std_Id=6;
     ```
    ![alt text](image-15.png)
---
-   2. **Update** : update is it used for modify the column data. <br>
**Syntax** : update tablename set columnname = value; :update all data in column using every row.
```
update student set std_address = 'Pune';
```
![alt text](image-17.png)
---
We can update specific row or update specific column using condition where clause.<br>
**Syntax** : update tablename set column = value where condition; <br>
**example** : If we think the above table data and we want to change the address of student where student id is 2 which means to change 'Pune' to 'Mumbai'.
```
update student set std_address = 'Mumbai' where std_Id=2;
```
![alt text](image-18.png)
---



## 🗑️ SQL: DELETE vs TRUNCATE vs DROP

A beginner-friendly guide to understand the differences between `DELETE`, `TRUNCATE`, and `DROP` in SQL.

---

### 🔹 1. DELETE

 **➤ What it does**
Removes **selected rows (data)** from a table.<br>
**➤ Works on**
- ✅ Table rows (data)
- ❌ Entire database <br>

**➤ Syntax**
```sql
DELETE FROM table_name WHERE condition;
````

**➤ Key Points**

* Can delete **specific rows** using `WHERE`
* Table **structure remains**
* Slower (row-by-row deletion)
* Can be **rolled back** (inside transactions)

**➤ Example**

```sql
DELETE FROM employees WHERE id = 5;
```

---

### 🔹 2. TRUNCATE

**➤ What it does**

Removes **all rows** from a table quickly.<br>

**➤ Works on**

* ✅ Whole table data
* ❌ Entire database

**➤ Syntax**

```sql
TRUNCATE TABLE table_name;
```

**➤ Key Points**

* Deletes **all rows only** (no `WHERE`)
* Table **structure remains**
* Very fast (minimal logging)
* Resets `AUTO_INCREMENT`
* Usually **cannot rollback**

**➤ Example**

```sql
TRUNCATE TABLE employees;
```

---

### 🔹 3. DROP

**➤ What it does**

Deletes the **entire object** (table or database).

**➤ Works on**

* ✅ Table
* ✅ Database

**➤ Syntax**

```sql
DROP TABLE table_name;
DROP DATABASE database_name;
```

**➤ Key Points**

* Deletes **structure + data**
* Object **no longer exists**
* Cannot rollback

**➤ Example**

```sql
DROP TABLE employees;
DROP DATABASE company_db;
```

---

## 🧠 Quick Summary

* **DELETE** → Remove specific rows (safe & flexible)
* **TRUNCATE** → Remove all rows quickly (keep table)
* **DROP** → Remove entire table/database (dangerous)

---

## 🎯 When to Use What?

* Use **DELETE** → When you need to remove specific records
* Use **TRUNCATE** → When you want to quickly empty a table
* Use **DROP** → When you want to permanently remove a table or database

---

## ⚠️ Important Tip

> Always use `WHERE` with `DELETE` to avoid accidental full data loss.

```sql
-- Dangerous ❌
DELETE FROM employees;

-- Safe ✅
DELETE FROM employees WHERE id = 10;
```

---

