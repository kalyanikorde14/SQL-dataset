

USE student_db;

# constraints -

CREATE TABLE student (
student_id INT auto_increment,
roll_no INT NOT NULL,
first_name varchar(50) NOT NULL,
last_name VARCHAR(50),
email varchar(100) unique,
mo_no varchar(14) unique,
gender ENUM('Male', 'Female'),
date_of_birth DATE,
age INT check(age >=18),
course varchar(50) DEFAULT 'Data Analyst',
fees decimal(10,2) CHECK (fees >= 30000),
admission_date timestamp default current_timestamp,
status boolean default TRUE,
primary key (student_id)
);

INSERT INTO student
(roll_no,first_name,last_name,email,mo_no,
gender,date_of_birth,age,course,fees
)
values
(01,'Govardhan','Singh','Govardhan361@gmail.com',
'+918523766982','Male','2005-06-04', 23,DEFAULT, 30000);



