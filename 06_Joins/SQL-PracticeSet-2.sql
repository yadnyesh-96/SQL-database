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
SELECT std_Name, email FROM student;

-- 3.️Students from 'New York'
SELECT *FROM student WHERE city='New York';

-- 4.️Female students
SELECT *FROM student WHERE gender='Female';

-- 5️.Students registered after 2024-01-01
SELECT *FROM student WHERE reg_Date>'2024-01-01';

-- 6.️Subjects with total marks > 80
SELECT *FROM subject WHERE total_Marks>80;

-- 7.️Exams between two dates
SELECT e.exam_Id, e.exam_date, e.duration_min, 
       s.sub_Name
FROM ExamSchdeule e
INNER JOIN subject s
ON e.sub_Id = s.sub_Id
WHERE e.exam_date BETWEEN '2024-01-01' AND '2025-01-01';

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
SELECT * FROM student ORDER BY reg_Date DESC;

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

-- 31️.Student with their exam results
SELECT s.std_Name,s.email,s.gender,s.city,s.reg_Date,r.res_status AS Result 
		FROM result r 
        INNER JOIN student s 
        ON r.std_Id=s.std_Id;

-- 32️.Student with exam date
SELECT e.exam_date,s.std_Id,s.std_Name 
		FROM examschdeule e 
        INNER JOIN result r 
        ON r.exam_Id=e.exam_Id 
        INNER JOIN student s 
        ON s.std_Id=r.std_Id;

-- 33️.Student with subject name
SELECT s.sub_Name,s1.std_Name FROM student s1 
	    JOIN result r ON r.std_Id=s1.std_Id 
		JOIN examschdeule e ON e.exam_Id = r.exam_Id 
        JOIN subject s ON s.sub_Id=e.sub_Id;

-- 34️.Subject with questions
SELECT s.sub_Name,q.que_text FROM subject s 
		JOIN subjectquestion sq ON sq.sub_Id=s.sub_Id
        JOIN question q ON sq.que_Id=q.que_Id;

-- 35️.Left join students and results
SELECT s.std_Name,s.email,s.gender,s.city,r.res_status 
	FROM student s 
    LEFT JOIN result r 
    ON r.std_Id=s.std_Id;

-- 36️.Right join results and student
SELECT r.res_status,s.std_Name,s.email,s.gender,s.city 
	FROM result r 
    RIGHT JOIN student s 
    ON s.std_Id=r.std_Id;

-- 37️.Students who passed with subject name
SELECT s.std_Name,ss.sub_Name,r.res_status FROM student s 
	JOIN result r ON s.std_Id=r.std_Id
    JOIN examschdeule e ON e.exam_Id=r.exam_Id
    JOIN subject ss ON e.sub_Id=ss.sub_Id
    WHERE r.res_status='Pass';

-- 38.Count students by city
SELECT city, count(std_Id) 
	FROM student 
    GROUP BY city;

-- 39.Count students by gender
SELECT gender, count(std_Id) 
	FROM student 
    GROUP BY gender;
 
-- 40.Total exams per subject
SELECT s.sub_Name, count(e.exam_Id) 
	FROM ExamSchdeule e 
    INNER JOIN subject s ON s.sub_Id=e.sub_Id 
    GROUP BY s.sub_Name;

-- 41.Average marks per student
SELECT s.std_Name, avg(r.marks_Obtained)AS Average_Marks 
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    GROUP BY s.std_Name;
    
-- 42.Students with avg marks > 60
SELECT s.std_Name, avg(r.marks_Obtained) 
	FROM student s 
    JOIN result r
    ON s.std_Id=r.std_Id
    GROUP BY s.std_Name HAVING avg(r.marks_Obtained)>60 ;

-- 43.Count questions per subject
SELECT sq.sub_Id,count(q.que_Id) 
	FROM question q 
    JOIN subjectquestion sq 
    ON sq.que_Id=q.que_Id 
    GROUP BY sq.sub_Id; 

-- 44.Subjects having more than 5 questions
SELECT sq.sub_Id,count(q.que_Id)
	FROM question q
    join subjectquestion sq
    ON sq.que_Id=q.que_Id
    GROUP BY sq.sub_Id;

-- 45. Total marks obtained per exam
SELECT s.std_Id,s.std_Name,s.email,s.gender,s.city, sum(r.marks_Obtained) 
	FROM student s
	JOIN result r
    ON r.std_Id=s.std_Id
    GROUP BY s.std_Id;

-- 46. Exams where total marks > 200
SELECT e.exam_Id,sum(r.marks_Obtained)
	FROM examschdeule e 
	JOIN result r 
    ON r.exam_Id=e.exam_Id GROUP BY e.exam_Id HAVING sum(r.marks_Obtained)>200;

-- 47. Count pass and fail
SELECT count(s.std_Id),r.res_status 
	FROM student s 
    JOIN result r 
    ON s.std_Id = r.std_Id
    GROUP BY r.res_status;

-- 48.Student Name, Subject Name, Exam Date, Marks
SELECT s.std_Id,s.std_Name,sb.sub_Name,e.exam_date,r.marks_Obtained
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN examschdeule e
    ON e.exam_Id=r.exam_Id
    JOIN subject sb
    ON sb.sub_Id=e.sub_Id;


-- 49.Students Who Scored More Than 70
SELECT s.std_Id,sb.sub_Id,r.marks_Obtained
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    JOIN subject sb 
    ON sb.sub_Id=e.sub_Id 
    WHERE r.marks_Obtained>70;
    
-- 50. Count of Exams Given by Each Student
SELECT s.std_Id,count(e.exam_Id)
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id 
    GROUP BY s.std_Id;


-- 51.Average Marks Per Subject
SELECT 
	s.sub_Id AS SubjectID,
    s.sub_Name AS SubjectName,
    avg(r.marks_Obtained) AS AverageMarks
	FROM subject s
    JOIN ExamSchdeule e
    ON s.sub_Id=e.sub_Id
    JOIN result r
    ON r.exam_Id=e.exam_Id 
    GROUP BY s.sub_Id;

-- 5️2. Subjects With More Than 3 Students Appeared
SELECT sb.sub_Id, sb.sub_Name, COUNT(DISTINCT r.std_Id) AS student_count
	FROM subject sb
	JOIN ExamSchdeule e ON sb.sub_Id = e.sub_Id
	JOIN result r ON e.exam_Id = r.exam_Id
	GROUP BY sb.sub_Id, sb.sub_Name
	HAVING COUNT(DISTINCT r.std_Id) > 3;


-- 53. Student Exam Details Between Two Dates
SELECT s.std_Id,s.std_Name,e.exam_Id,e.exam_date 
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    WHERE e.exam_date BETWEEN '2024-01-01' AND '2025-01-01';
    
-- 54. Total Marks Obtained Per Student
SELECT s.std_Id,sum(r.marks_Obtained)
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    GROUP BY s.std_Id, s.std_Name;

-- 55. Hard Questions Per Subject
SELECT s.sub_Id,s.sub_Name,count(q.que_Id)
	FROM subject s
    JOIN SubjectQuestion sq
    ON sq.sub_Id=s.sub_Id
    JOIN question q
    ON sq.que_Id=q.que_Id
    WHERE q.difficulty_level='Hard'
    GROUP BY s.sub_Id;

-- 57. Students Who Failed
SELECT s.std_Id,s.std_Name,r.res_status
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    WHERE r.res_status='Fail';

-- 58. Exam Duration With Subject
SELECT s.sub_Name,e.duration_min
	FROM subject s 
    JOIN ExamSchdeule e
    ON e.sub_Id=s.sub_Id;
    
-- 59. Students From New York Appeared in Exams
SELECT s.std_Id,s.city,e.exam_Id
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    WHERE s.city='New York';

-- 60. Count Questions Per Subject
SELECT s.sub_Name,count(q.que_Id)
	FROM subject s
    JOIN SubjectQuestion sq
    ON s.sub_Id=sq.sub_Id
    JOIN question q
    ON q.que_Id=sq.que_Id
    GROUP BY s.sub_Name;

-- 61.Students Appeared in More Than 2 Exams
SELECT s.std_Id,count(e.exam_Id)
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    GROUP BY s.std_Id 
    HAVING count(e.exam_Id)>=2;

-- 62. Average Marks Greater Than 60
SELECT s.std_Id,avg(sb.total_Marks)
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    JOIN subject sb
    ON sb.sub_Id=e.sub_Id
    GROUP BY s.std_Id
    HAVING avg(sb.total_Marks)>60;

-- 63. Easy Questions With Subject
SELECT q.que_Id,q.que_text,s.sub_Id,s.sub_Name,q.difficulty_level
	FROM question q
    JOIN SubjectQuestion sq
    ON sq.que_Id=q.que_Id
    JOIN subject s 
    ON s.sub_Id=sq.sub_Id
    WHERE q.difficulty_level='Easy';

-- 64. Students and Total Exams Per Subject
SELECT s.std_Id,s.std_Name,e.exam_Id,sb.sub_Id,sb.sub_Name
	FROM student s 
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e 
    ON e.exam_Id = r.exam_Id
    JOIN subject sb
    ON sb.sub_Id=e.sub_Id;

-- 65. Highest Marks Per Exam
SELECT exam_Id, MAX(marks_Obtained) AS highest_marks
FROM result
GROUP BY exam_Id;
    
-- 66 Lowest Marks Per Subject
SELECT s.sub_Id,s.sub_Name,min(r.marks_Obtained)
	FROM subject s
    JOIN ExamSchdeule e
    ON e.sub_Id=s.sub_Id
    JOIN result r
    ON r.exam_Id=e.exam_Id
    GROUP BY s.sub_Id,s.sub_Name;

-- 67 Students Appeared in Subjects Containing 'Math'
SELECT s.std_Id,s.std_Name,sb.sub_Id,sb.sub_Name
	FROM student s
    JOIN result r
	ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    JOIN subject sb
    ON sb.sub_Id=e.sub_Id
    WHERE sb.sub_Name LIKE '%Math%';
    
-- 68.Count Students By Gender In Exams
SELECT s.gender,count(DISTINCT s.std_Id) AS gender,e.exam_Id
	FROM student s
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    GROUP BY s.gender,e.exam_Id;
    
-- 69. Students Who Appeared in 2025 Exams
SELECT s.std_Id,e.exam_Id
	FROM student s 
    JOIN result r 
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    WHERE YEAR(e.exam_date) = '2025';
--  WHERE e.exam_date BETWEEN '2025-01-01' AND '2025-12-31';

-- 70. Total Marks Per Subject
SELECT sub_Name,total_Marks FROM subject;

-- 71. Students Who Passed More Than 1 Exam
SELECT s.std_Id,count(e.exam_Id),r.res_status
	FROM student s 
    JOIN result r
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    GROUP BY s.std_Id,r.res_status
    HAVING count(e.exam_Id)>1 AND r.res_status='Pass';

-- 72. Students Ordered By Total Marks Desc
SELECT s.std_Id,r.marks_Obtained
	FROM student s 
    JOIN result r
    ON r.std_Id=s.std_Id
    ORDER BY r.marks_Obtained DESC;

-- 73.Subjects With Exam Duration > 90
SELECT s.sub_Id,e.exam_Id,e.duration_min
	FROM subject s 
    JOIN ExamSchdeule e 
    ON e.sub_Id=s.sub_Id
    WHERE e.duration_min>90;

-- 74. Students From Chicago Who Passed
SELECT s.std_Id,s.city,r.res_status
	FROM student s 
    JOIN result r
    ON r.std_Id=s.std_Id
	WHERE s.city='Chicago' AND r.res_status='Pass';

-- 75 Total Questions By Difficult
SELECT difficulty_level, count(*) FROM question GROUP BY difficulty_level;

-- 76 Students With Marks Between 50 and 80
SELECT s.std_Id,r.marks_Obtained
	FROM student s 
    JOIN result r
    ON r.std_Id = s.std_Id 
    WHERE r.marks_Obtained BETWEEN 50 AND 80;

-- 78.Full Report (Student + Subject + Questions Count + Marks)
SELECT s.std_Id,s.std_Name,sb.sub_Id,sb.sub_Name,count(q.que_Id),r.marks_Obtained
	FROM student s 
    JOIN result r 
    ON r.std_Id=s.std_Id
    JOIN ExamSchdeule e
    ON e.exam_Id=r.exam_Id
    JOIN subject sb
    ON sb.sub_Id=e.sub_Id
    JOIN SubjectQuestion sq
    ON sb.sub_Id=sq.sub_Id
    JOIN question q
    ON q.que_Id=sq.que_Id
    GROUP BY s.std_Id,s.std_Name,sb.sub_Id,sb.sub_Name,r.marks_Obtained;



SELECT * FROM student;
SELECT * FROM subject;
SELECT * FROM ExamSchdeule;
SELECT * FROM question;
SELECT * FROM SubjectQuestion;
SELECT * FROM result;