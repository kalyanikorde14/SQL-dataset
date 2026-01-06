CREATE DATABASE college_db;

USE college_db;

CREATE TABLE students(
student_id INT PRIMARY KEY auto-increment,
name VARCHAR(50) NOT NULL,
email varchar(100) unique,
age INT CHECK(age >=18),
course VARCHAR(30) default 'DATA ANALYST',
admission_date DATE);


# 3 RENAME
RENAME TABLE teacher TO faculty;

#4 TRUNCATE - delet all data only

truncate TABLE faculty;

# 5 -DROP - delet all data with table also
DROP TABLE faculty;

#DML -Data Manipulation Language

#1 - INSERT

INSERT INTO student (name,email,age,admission_date,Phone_no)
values("Kalyani","kalyani@gmail.com",89,"2025-12-23","+919876907656",);

#2-UPDATE
SET SQL_SAFE_UPDATES = 0;

UPDATE student SET age = 18
WHERE
name = "Kalyani";

SET SQL_SAFE_UPDATES = 1;

#3-DELETE - delete perticular record

DELETE FROM students
WHERE name = "Kalyani";

#DQL - Data Querry Language
SELECT*FROM student;
SELECT student_id,name FROM students;

# DCL - Data Control Language

# 1 -GRANT - 

GRANT SELECT , insert
ON college_db.students TO
"uset1@localhost";

# 2 - REVOKE

REVOKE INSERT ON
college_db.students TO
"users1@localhost";

# 5 -TCL - Transaction control language
 
 #1 - START
 START transaction;
 
 # 2 - SAVEPOINT
 savepoint sp 1;
 
 #3 - ROLLBACK
  rollback to sp1;
  
  #4 COMMIT
  COMMIT;
 
 
 
  
 
 
 










SELECT student_id , name FROM students;
