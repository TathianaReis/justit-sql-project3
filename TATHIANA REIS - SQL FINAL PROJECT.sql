-- PROJECT 3 --
-- STUDENT: TATHIANA REIS --
-- OBJECTIVE : Create a student course enrolment system to manage students, courses and enrolments

-- CREATING SchoolDB DATABASE 
create database SchoolDB; 

-- NOW WE NEED TO USE THE CREATED DATABASE
use SchoolDB;

-- CREATING Students TABLE (ColumnName datatype constraints)
CREATE TABLE tbl_students(
student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
date_of_birth DATE NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE -- MAKING EMAIL ADDREES TO BE UNIQUE
);  

-- CREATING Courses TABLE (ColumnName datatype constraints)
CREATE TABLE tbl_courses(
course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL,
description VARCHAR(255) NOT NULL,
credits TINYINT UNSIGNED DEFAULT 0 -- TINYINT FOR VERY SMALL INTEGERS (1 byte, 0 to 255) / Unsigned means non-negative numbers
);  

-- CREATING Enrolments TABLE (ColumnName datatype constraints)
CREATE TABLE Enrolments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,     
    student_id INT NOT NULL,    -- Foreign Key referencing Students table
    course_id INT NOT NULL,     -- Foreign Key referencing Courses table
    enrolment_date DATE NOT NULL,                     
    grade VARCHAR(2),                                 
    -- Foreign Key Constraints
    CONSTRAINT fk_student FOREIGN KEY (student_id)
        REFERENCES tbl_students(student_id)
        ON DELETE CASCADE     -- Delete enrollment if student is deleted
        ON UPDATE CASCADE,    -- Update enrollment if student is deleted
    CONSTRAINT fk_course FOREIGN KEY (course_id)
        REFERENCES tbl_courses(course_id)
        ON DELETE CASCADE    -- Delete enrollment if course is deleted
        ON UPDATE CASCADE    -- Update enrollment if course is deleted
);

-- INSERTING DATA TO STUDENTS TABLE: COLUMN NAMES WITH RESPECTIVELY VALUES

INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Ella', 'Hernandez', '1987-03-05', 'ella.hernandez1@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Alexander', 'Hernandez', '1996-11-07', 'alexander.hernandez2@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Jane', 'Thomas', '1996-07-27', 'jane.thomas3@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Charlotte', 'Moore', '1992-09-15', 'charlotte.moore4@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Joshua', 'White', '2007-04-06', 'joshua.white5@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Grace', 'Clark', '2007-12-18', 'grace.clark6@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Chloe', 'Lopez', '1987-07-13', 'chloe.lopez7@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Alexander', 'Smith', '1992-05-09', 'alexander.smith8@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Jane', 'Walker', '1992-02-20', 'jane.walker9@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Chloe', 'Hernandez', '1995-08-04', 'chloe.hernandez10@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('David', 'Garcia', '2009-01-16', 'david.garcia11@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Jacob', 'Ramirez', '2004-07-21', 'jacob.ramirez12@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Ella', 'Wilson', '2010-06-28', 'ella.wilson13@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Grace', 'Anderson', '1986-06-08', 'grace.anderson14@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('David', 'Johnson', '1986-07-24', 'david.johnson15@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Alexander', 'Smith', '1985-04-19', 'alexander.smith16@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Michael', 'Lopez', '1997-02-27', 'michael.lopez17@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Grace', 'Jones', '1980-09-30', 'grace.jones18@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Alexander', 'Davis', '1986-05-24', 'alexander.davis19@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Jacob', 'Brown', '1996-09-12', 'jacob.brown20@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Isabella', 'Thompson', '2001-09-19', 'isabella.thompson21@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Jane', 'Moore', '1990-07-29', 'jane.moore22@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Ryan', 'Jackson', '2003-03-23', 'ryan.jackson23@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Chris', 'Jackson', '1989-05-13', 'chris.jackson24@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Andrew', 'Thomas', '2008-10-11', 'andrew.thomas25@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Jane', 'Lopez', '1981-02-16', 'jane.lopez26@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Alexander', 'Davis', '1999-05-27', 'alexander.davis27@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Grace', 'Brown', '2000-10-31', 'grace.brown28@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Nathan', 'Wilson', '1989-09-17', 'nathan.wilson29@example.com');
INSERT INTO tbl_students (first_name, last_name, date_of_birth, email) VALUES ('Anna', 'Martin', '1997-03-10', 'anna.martin30@example.com');

-- INSERTING DATA TO COURSES TABLE: COLUMN NAMES WITH RESPECTIVELY VALUES
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Introduction to Programming', 'Learn the basics of programming and problem-solving techniques.', 10);
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Data Structures', 'Explore data organization and manipulation using various structures.', 14);
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Algorithms', 'Study algorithms for solving complex computational problems.', 20);
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Database Management Systems', 'Understand the design and implementation of database systems.', 8);
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Operating Systems', 'Dive into the principles of operating systems and resource management.', 13);
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Computer Networks', 'Learn about network protocols, communication, and security.', 30);
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Web Development', 'Master the foundations of building responsive websites.', 25);
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Mobile App Development', 'Develop applications for mobile platforms using modern tools.', 5);
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Artificial Intelligence', 'Introduction to AI concepts and applications in real-world scenarios.', 24);
INSERT INTO tbl_courses (course_name, description, credits) VALUES ('Machine Learning', 'Understand the fundamentals of machine learning and predictive models.', 40);


-- INSERTING DATA TO ENROLLMENTS TABLE: COLUMN NAMES WITH RESPECTIVELY VALUES
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (1, 2, 3, '2023-03-01 22:50:00', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (2, 28, 8, '2023-06-12 14:49:35', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (3, 22, 10, '2023-01-20 18:55:29', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (4, 17, 9, '2024-05-21 06:38:06', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (5, 22, 3, '2023-03-13 18:49:54', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (6, 14, 8, '2023-06-09 23:44:45', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (7, 9, 8, '2023-09-30 03:41:14', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (8, 10, 4, '2024-06-01 01:37:24', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (9, 3, 4, '2024-07-18 20:23:31', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (10, 19, 10, '2023-04-11 22:19:37', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (11, 24, 1, '2024-07-03 05:49:21', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (12, 10, 2, '2024-10-11 17:58:34', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (13, 25, 6, '2024-04-05 12:39:20', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (14, 10, 6, '2024-10-12 08:53:34', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (15, 20, 6, '2024-09-30 18:49:25', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (16, 6, 8, '2023-06-04 18:31:59', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (17, 22, 2, '2024-03-07 13:04:43', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (18, 17, 3, '2023-10-20 05:40:16', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (19, 1, 7, '2023-02-18 19:20:21', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (20, 20, 2, '2023-09-11 19:05:29', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (21, 6, 9, '2024-06-14 10:39:29', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (22, 11, 6, '2023-01-16 23:38:01', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (23, 28, 2, '2024-04-05 19:58:14', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (24, 23, 2, '2024-03-18 10:44:54', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (25, 9, 2, '2024-07-11 01:54:25', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (26, 3, 6, '2023-10-07 06:19:48', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (27, 2, 6, '2024-07-17 19:58:02', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (28, 15, 2, '2023-01-07 06:19:13', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (29, 11, 8, '2024-10-31 10:32:24', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (30, 18, 9, '2023-02-28 11:15:47', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (31, 25, 2, '2023-10-20 11:42:34', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (32, 9, 3, '2023-07-16 02:12:52', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (33, 30, 8, '2023-08-24 10:07:53', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (34, 23, 10, '2023-02-14 14:28:20', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (35, 22, 4, '2023-11-24 17:06:54', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (36, 1, 2, '2023-02-17 08:34:48', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (37, 3, 6, '2023-06-23 14:04:52', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (38, 3, 4, '2024-02-21 00:14:59', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (39, 3, 8, '2023-04-23 10:19:19', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (40, 13, 2, '2023-11-05 14:07:41', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (41, 20, 6, '2024-07-08 00:08:04', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (42, 12, 2, '2023-04-12 04:13:02', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (43, 11, 10, '2024-07-24 19:32:27', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (44, 6, 10, '2024-05-23 20:48:57', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (45, 22, 9, '2023-01-07 22:02:33', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (46, 29, 4, '2023-07-27 12:30:52', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (47, 13, 2, '2024-03-22 23:34:07', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (48, 27, 4, '2023-07-01 12:58:47', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (49, 20, 2, '2023-09-21 11:34:36', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (50, 16, 8, '2024-07-21 07:10:58', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (51, 27, 4, '2023-05-12 01:43:48', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (52, 15, 2, '2024-02-11 02:51:21', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (53, 18, 3, '2023-09-28 22:24:11', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (54, 26, 9, '2023-11-06 22:53:01', 'C');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (55, 22, 5, '2024-10-05 05:36:24', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (56, 15, 3, '2023-06-16 14:01:13', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (57, 17, 8, '2024-04-30 11:55:05', 'D');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (58, 1, 4, '2024-05-24 09:08:36', 'A');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (59, 19, 8, '2024-10-13 06:01:03', 'B');
insert into Enrolments (enrollment_id, student_id, course_id, enrolment_date, grade) values (60, 28, 3, '2023-08-28 23:08:01', 'B');

desc Enrolments;

-- FIXING ISSUE WITH TABLE NAME AND COLUMN FIELD NAME
select * from Enrolments;
truncate Enrolments;
select * from Enrolments;
ALTER TABLE Enrolments RENAME TO tbl_enrolments; 
ALTER TABLE tbl_enrolments 
RENAME COLUMN enrollment_id TO enrolment_id;

desc tbl_students;
desc tbl_courses;
desc tbl_enrolments;

-- REINSERTING DATA TO ENROLLMENTS TABLE: COLUMN NAMES WITH RESPECTIVELY VALUES
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (1, 15, 9, '2024-10-20', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (2, 2, 3, '2023-10-06', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (3, 7, 9, '2024-03-10', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (4, 10, 1, '2024-08-29', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (5, 23, 1, '2024-06-11', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (6, 27, 1, '2024-02-26', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (7, 7, 2, '2023-05-26', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (8, 1, 9, '2023-06-08', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (9, 19, 7, '2024-07-22', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (10, 30, 3, '2023-10-07', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (11, 22, 2, '2024-03-10', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (12, 6, 1, '2023-10-06', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (13, 11, 2, '2023-05-21', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (14, 11, 10, '2024-08-08', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (15, 13, 8, '2024-11-01', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (16, 6, 5, '2024-01-30', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (17, 4, 4, '2024-04-26', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (18, 2, 10, '2024-08-03', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (19, 2, 6, '2024-02-18', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (20, 2, 8, '2024-06-11', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (21, 11, 9, '2023-07-01', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (22, 14, 6, '2024-07-27', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (23, 13, 8, '2023-09-20', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (24, 29, 9, '2023-03-22', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (25, 25, 2, '2023-11-27', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (26, 26, 8, '2023-12-28', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (27, 11, 8, '2024-10-24', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (28, 21, 10, '2023-05-21', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (29, 18, 5, '2023-05-10', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (30, 4, 7, '2024-03-21', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (31, 22, 6, '2024-08-16', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (32, 26, 7, '2023-06-16', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (33, 17, 3, '2024-07-04', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (34, 5, 5, '2024-02-05', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (35, 24, 2, '2024-05-14', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (36, 21, 5, '2024-09-07', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (37, 1, 7, '2024-04-02', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (38, 7, 10, '2023-04-10', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (39, 1, 7, '2023-01-09', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (40, 11, 8, '2024-09-05', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (41, 22, 2, '2024-07-19', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (42, 22, 10, '2023-07-17', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (43, 17, 1, '2024-02-26', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (44, 26, 2, '2024-03-18', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (45, 19, 2, '2024-01-26', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (46, 2, 6, '2024-03-08', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (47, 12, 6, '2024-04-02', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (48, 20, 9, '2023-11-22', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (49, 4, 3, '2023-01-24', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (50, 27, 8, '2024-11-04', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (51, 14, 7, '2024-01-17', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (52, 25, 10, '2024-04-29', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (53, 3, 3, '2023-07-03', 'A');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (54, 15, 3, '2024-08-03', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (55, 26, 1, '2024-01-22', 'B');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (56, 29, 4, '2024-02-18', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (57, 1, 10, '2024-05-02', 'C');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (58, 8, 6, '2024-03-12', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (59, 28, 9, '2023-05-15', 'D');
insert into tbl_enrolments (enrolment_id, student_id, course_id, enrolment_date, grade) values (60, 4, 3, '2024-06-29', 'D');

-- CREATE QUERIES TO LIST ALL| STUDENTS, ALL COURSES AND ALL ENROLMENTS
SELECT * FROM tbl_students;

-- CREATE QUERIES TO LIST ALL COURSES
SELECT * FROM tbl_courses;

-- CREATE QUERIES TO LIST ALL ENROLMENTS
SELECT * FROM tbl_enrolments;
 
-- UPDATE A STUDENT'S GRADE FOR A COURSE
SELECT * FROM tbl_enrolments where student_id = 30; 
UPDATE tbl_enrolments SET grade = 'A' where student_id = 30 and course_id = 3;
SELECT * FROM tbl_enrolments where student_id = 30; 

-- CREATE VIEWS TO SHOW STUDENTS COURSES AND THEIR GRADES 
CREATE VIEW student_course_grades AS
SELECT 
    CONCAT(st.first_name, ' ', st.last_name) AS full_name,
    c.course_name,
    e.grade
FROM 
    tbl_students st
JOIN 
    tbl_enrolments e ON st.student_id = e.student_id -- Joining on the foreign key
JOIN 
    tbl_courses c ON c.course_id = e.course_id -- Joining on the foreign key
ORDER BY 
    full_name ASC;
    
    -- ACCESSING THE VIEW
    SELECT * FROM student_course_grades;
    SHOW CREATE VIEW student_course_grades;


-- USE STORED PROCEDURES TO ENROL A STUDENT IN A COURSE AND HANDLE ALL RELATED UPDATES.
DELIMITER $$
CREATE PROCEDURE EnrollStudent(
-- Arguments
    IN p_student_id INT,
    IN p_course_id INT,
    IN p_enrolment_date DATE,
    IN p_grade VARCHAR(2)  
)
BEGIN
    -- Declare variables for validation
    DECLARE student_exists INT DEFAULT 0;
    DECLARE course_exists INT DEFAULT 0;

    -- Check if the student exists. The variable will receive the count number from the select statement. 
    SELECT COUNT(*) INTO student_exists 
    FROM tbl_students 
    WHERE student_id = p_student_id;

    -- Check if the course exists
    SELECT COUNT(*) INTO course_exists 
    FROM tbl_courses 
    WHERE course_id = p_course_id;

    -- If either student or course doesn't exist, signal an error
    IF student_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
         SET MESSAGE_TEXT = 'Student ID does not exist.';
    END IF;

    IF course_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Course ID does not exist.';
    END IF;

    -- If student_id and course_id are valid, insert the enrolment record
    INSERT INTO tbl_enrolments (student_id, course_id, enrolment_date, grade)
    VALUES (p_student_id, p_course_id, p_enrolment_date, p_grade);

    -- Success message to confirm that the procedure has completed successfully
    SELECT 'Student successfully enrolled in the course.' AS message;
END $$
DELIMITER ;

-- CALLING THE STORED PROCEDURE TO ENROLL THE STUDENT
CALL EnrollStudent(28, 2, '2024-11-15', 'A');

-- IMPLEMENT THE CASE STATEMENT TO CATEGORISE STRUDENTS BASED ON THEIR GRADES.
SELECT 
    full_name,
    MIN(grade) AS highest_grade, -- USED MIN() BECAUSE Lower ASCII values (A) come before higher ones (D)
    CASE
        WHEN MIN(grade) = 'A' THEN 'Excellent'
        WHEN MIN(grade) = 'B' THEN 'Good'
        WHEN MIN(grade) = 'C' THEN 'Average'
        WHEN MIN(grade) = 'D' THEN 'Below Average'
        WHEN MIN(grade) = 'F' THEN 'Fail'
        ELSE 'No grade'
    END AS grade_category
FROM 
    student_course_grades
GROUP BY 
    full_name
ORDER BY 
    full_name ASC;
    
    