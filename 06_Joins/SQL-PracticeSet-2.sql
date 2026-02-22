CREATE DATABASE OnlineExamDB;

USE OnlineExamDB;

-- Student Table
CREATE TABLE student(
	std_Id INT(5) PRIMARY KEY,
    std_Name VARCHAR(100),
    email VARCHAR(100),
	gender VARCHAR(10),
    city VARCHAR(100),
    reg_Date DATE);
    
-- Subject Table 
CREATE TABLE subject(
	sub_Id INT PRIMARY KEY,
    sub_Name VARCHAR(100),
    total_Marks INT(5));
    
-- Ecxam Schedule Table 
CREATE TABLE ExamSchdeule(
	exam_Id INT PRIMARY KEY,
    sub_Id INT(5),
    exam_date DATE,
    duration_min INT(6),
    FOREIGN KEY(sub_Id) REFERENCES subject(sub_Id));

-- Question Table
CREATE TABLE question( 
	que_Id INT PRIMARY KEY,
    que_text VARCHAR(500),
    difficulty_level VARCHAR(20),
    marks INT );
    
-- Subject-Question (Many-to-Many)
CREATE TABLE SubjectQuestion(
	sub_Id INT(5),
    que_Id INT(5),
    PRIMARY KEY (sub_Id,que_Id),
    FOREIGN KEY(sub_Id) REFERENCES subject(sub_Id),
    FOREIGN KEY(que_Id) REFERENCES question(que_Id));

-- Result Table 
CREATE TABLE result(
	res_Id INT PRIMARY KEY,
    std_Id INT,
    exam_Id INT,
    marks_Obtained INT,
    res_status VARCHAR(20),
    FOREIGN KEY(std_Id) REFERENCES student(std_Id),
    FOREIGN KEY(exam_Id) REFERENCES ExamSchdeule(exam_Id));
    
-- student table data 
INSERT INTO student VALUES
(1,'Alice Johnson','alice@gmail.com','Female','New York','2024-02-10'),
(2,'Bob Smith','bob@yahoo.com','Male','Chicago','2023-12-15'),
(3,'Charlie Brown','charlie@gmail.com','Male','New York','2024-03-05'),
(4,'Diana Prince','diana@gmail.com','Female','Boston','2024-04-01'),
(5,'Ethan Hunt','ethan@gmail.com','Male','Chicago','2024-05-20'),
(6,'Fiona Davis','fiona@gmail.com','Female','Los Angeles','2024-06-18'),
(7,'George Wilson','george@yahoo.com','Male','New York','2023-11-11'),
(8,'Hannah Lee','hannah@gmail.com','Female','Chicago','2024-07-22');

-- subject table data
INSERT INTO subject VALUES
(101,'Mathematics',100),
(102,'Science',90),
(103,'English',80),
(104,'Computer Science',100);

-- Exam schedule data 
INSERT INTO ExamSchdeule VALUES
(201,101,'2024-06-01',120),
(202,102,'2024-06-15',90),
(203,103,'2025-01-10',60),
(204,104,'2025-02-20',100);

--  question table data 
INSERT INTO question VALUES
(301,'Algebra problem','Easy',2),
(302,'Geometry theorem','Hard',10),
(303,'Physics laws','Medium',5),
(304,'Chemistry reactions','Hard',8),
(305,'Grammar basics','Easy',2),
(306,'Programming logic','Hard',10),
(307,'Data structures','Medium',5);

-- subject question table 
INSERT INTO SubjectQuestion VALUES
(101,301),
(101,302),
(102,303),
(102,304),
(103,305),
(104,306),
(104,307);

-- result table datat 
INSERT INTO result VALUES
(401,1,201,85,'Pass'),
(402,2,201,45,'Pass'),
(403,3,202,30,'Fail'),
(404,4,202,70,'Pass'),
(405,5,203,60,'Pass'),
(406,6,203,25,'Fail'),
(407,7,204,90,'Pass'),
(408,8,204,55,'Pass'),
(409,1,204,75,'Pass'),
(410,3,201,40,'Pass');

-- 1.List all students
SELECT *FROM student;

-- 2.️Show student names and emails
SELECT email FROM student;

-- 3.️Students from 'New York'
SELECT *FROM student WHERE city='New York';

-- 4.️Female students
SELECT *FROM student WHERE gender='Female';

-- 5️.Students registered after 2024-01-01
SELECT *FROM student WHERE reg_Date>'2024-01-01';

-- 6.️Subjects with total marks > 80
SELECT *FROM subject WHERE total_Marks>80;

-- 7.️Exams between two dates
SELECT *FROM ExamSchdeule WHERE exam_date BETWEEN '2024-01-01' AND '2025-01-01';

-- 8.Questions with difficulty = 'Hard'
SELECT *FROM question WHERE difficulty_level='Hard';

-- 9️.Students whose name starts with 'A'
SELECT *FROM student WHERE std_Name LIKE 'A%';

-- 10. Students whose email ends with gmail.com
SELECT *FROM student WHERE email LIKE '%gmail.com';

-- 11️.Subjects containing 'Math'
SELECT *FROM subject WHERE sub_Name LIKE '%Math%';

-- 12.️Questions having marks between 5 and 10
SELECT *FROM question WHERE marks BETWEEN 5 AND 10;

-- 13.️Results where marks_obtained >= 40
SELECT *FROM result WHERE marks_Obtained>=40;

-- 14️.Students from multiple cities
SELECT *FROM student WHERE city IN ('New York','Chicago');

-- 15️.Exams longer than 90 minutes
SELECT *FROM ExamSchdeule WHERE duration_min > 90;

-- 16️.Male students from Chicago
SELECT *FROM student WHERE gender = 'Male' AND city='Chicago';

-- 17️.Subjects with total_marks between 50 and 100
SELECT *FROM subject WHERE total_Marks BETWEEN 50 AND 100;

-- 18️.Questions with marks = 2
SELECT *FROM question WHERE marks = 2;

-- 19️.Students whose name contains 'son'
SELECT *FROM student WHERE std_Name LIKE '%son%';

-- 20️. Results with status 'Pass'
SELECT *FROM result WHERE res_status='Pass';

-- 21️.Students ordered by name
SELECT *FROM student ORDER BY std_Name ASC;

-- 22️.Students ordered by registration_date DESC
SELECT *FROM student ORDER BY reg_date DESC;

-- 23️Subjects ordered by total_marks DESC
SELECT *FROM subject ORDER BY total_Marks DESC;

-- 24️.Questions ordered by marks
SELECT *FROM question ORDER BY marks DESC;

-- 25️.Results ordered by marks_obtained DESC
SELECT *FROM result ORDER BY marks_obtained DESC;

-- 26️.Exams ordered by date
SELECT *FROM examschdeule ORDER BY exam_date;

-- 27️.Students ordered by city then name
SELECT *FROM student ORDER BY city;

-- 28️.Hard questions ordered by marks DESC
SELECT *FROM question WHERE difficulty_level='Hard' ORDER BY marks DESC;

-- 29️.Passed results ordered by marks
SELECT *FROM result WHERE res_status='Pass' ORDER BY marks_obtained;

-- 30️.Subjects containing 'Science' ordered
SELECT *FROM subject WHERE sub_Name LIKE '%Science%' ORDER BY sub_Name ASC;

SELECT * FROM student;
SELECT * FROM subject;
SELECT * FROM ExamSchdeule;
SELECT * FROM question;
SELECT * FROM SubjectQuestion;
SELECT * FROM result;