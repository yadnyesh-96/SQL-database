## **Types of Keys in Relational Database Management System (RDBMS) : 🧾**

### **1.Composite Primary Key :**
- Composite primary key means primary key contains two or more than two column as primary key called as composite primary key.

### **2.Candidate Key**
- A **Candidate kay** is a column or set of column that can uniquely identify each record in table
  - a) Table can have multiple candidate key.
  - b) From these candidate one is selected as the primary key.
  - c) The remaining key's are alternate keys.
  
### Difference Between *Candidate Key* **&** *Primary Key*

|**_Sr.No_**| **_Candidate Key_** | **_Primary Key_** |
|:------:|:------|:-------|
| 1. | Canditate key can be `multiple`|Primary Key is `only one in table` |
| 2. | Candidate key may or `may not` select for `unique identification` |Primary key `always used` for `unique identification` or select from candidate key |
| 3. | candidate key must be `unique` and may be `null` |primary key `must` be `unique` and `not null`. |


### **3.Super Key**
- A **super key** is any column or combination of column that can uniquely identify a row in table.
   - A) It may contain extra unnecessary attribute / column.
   - B) Every candidate key is super key but that not every super key is candidate key.
   -  
### **4.Natural Key**
- A **Natural Key** is a key that is derived frim real-word, meaning data can uniquely identify record.
- It is not artificially generated.
- It has business meaning.

### **5.Suurogate Key**
- A **Surrogate Key** is an artificially generated unique identifier (like an Auto_Increment ID or UUID).
- It has no real-world or business meaning.
- It remains constant even if business data (like an email or name) changes.
  
### **6.Primary Key**
- A **Primary Key** is a column (or set of columns) that uniquely identifies each row in a table.
- It cannot contain NULL values and must be unique.
- Each table can have only one Primary Key.
  
### **7.Unique Key**
- A **Unique Key** ensures that all values in a column are different from one another.
- Unlike a Primary Key, it can accept a NULL value (though usually only one, depending on the SQL dialect).
- You can have multiple Unique Keys in a single table.
  
### **8.Foreign Key**
- A **Foreign Key** is a column that creates a link between two tables.
- It refers to the Primary Key of another table to maintain Referential Integrity.
- It ensures that you cannot add a record to the child table if the corresponding parent record doesn't exist.
---