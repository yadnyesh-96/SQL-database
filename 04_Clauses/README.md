## **Clauses in SQL** 🏛️

- ### `where` clause :<br>
    **where** clause is used for apply condition SQL statement and query Means we can apply where clause with *delete*, *select* or *update* *statement*.<br>
    - How to use `where` caluse with *select* statement.<br>
    - **Sysntax** : select *from tablename where condition;<br>
    - **Example** : we want to fetch data of student whose Id is 2.
    ```
    select *from student where std_Id=1;
    ``` 
    ![alt text](image-21.png)
---
- ### **Logical Operator** <br>
    Logical operator is used to combining more than one condition and Making it as a single condition.
    1. `&&` or `and` : this is used fro apply && operator means if all conditions are true then condition is true otherwise condition is false. <br>
    2. `||` or `or` : this is used for apply || operator means if any condition true then condition is true otherwise condition is false. <br>
    3. `!` : if true condition then flase and if false then true. <br>
    **Examples** : using `&&`, `||`, `!` operators. <br>
        1. Write a Query to fetch student whose id is 5 and fees is 5000.
        ![alt text](image-22.png)
        2. Write a Query to fetch student whose name is *aniket* or fees is 3005.
        ![alt text](image-23.png)
        3.Write a Query to fetch student whose id is not 2.
        ![alt text](image-24.png)
---
- ### `IN`, `Between` : 
    **`IN` Operator** : IN operator is alternative for multiple OR condition means when we use more than one OR condition with single column in query then we use IN operator as well as IN Operator is used for write subquerry.<br>
    **Syntax** : select *from tablename where columnname IN(value1,value2,value...n);<br>
    **Example** : Write a Query to fetch student whose fees is (3005.3025,5000)
    ```
    select *from student where std_fees IN(3005,3025,5000);
    ``` 
    ![alt text](image-25.png)
    ---
    **`Between` Operator** : Between Operator is used to fetch data betweeen range of specified value such as >= and <=. <br>
    **Syntax** : select *from tavlename where columnbame between begval and targetvalue; <br>
    **Example** : Write a Query to fetch student data whose salary in range between 4000 to 5000.
    ```
    select *from student where std_fees between 4000 and 5000;
    ```
    ![alt text](image-26.png)
---