-- create and select the database
DROP DATABASE IF EXISTS sdb;
CREATE DATABASE sdb;
USE sdb;

-- create the Student table
CREATE TABLE Student (
  ID			INT            PRIMARY KEY  AUTO_INCREMENT,
  FirstName		NVARCHAR(25)    NOT NULL,
  LastName		NVarChar(25)	NOT NULL,
  StreetAddress	NVARCHAR(25)   NOT NULL,
  City 			NVARCHAR(25)   NOT NULL,
  State			NVARCHAR(2)   NOT NULL,
  Zip			NVARCHAR(5)   NOT NULL,
  Birthdate		DATE			NOT NULL,
  PhoneNumber	NVARCHAR(12)	NOT NULL,
  Email			NVARCHAR(25)	NOT NULL,
  SSN			NVARCHAR(11)	NOT NULL
);

-- create Course table
CREATE TABLE Course (
  ID			INT				PRIMARY KEY  AUTO_INCREMENT,
  Number	INT		NOT NULL 		UNIQUE,
  Subject	NVARCHAR(25)		NOT NULL,
  Name		NVARCHAR(50)		NOT NULL
);

-- create Instructor table
CREATE TABLE Instructor (
	ID			INT				PRIMARY KEY  AUTO_INCREMENT,
	FirstName		NVARCHAR(25)    NOT NULL,
	LastName		NVarChar(25)	NOT NULL,
	CourseID		INT,
FOREIGN KEY (COURSEID) REFERENCES Course (ID)
);
 
  -- create Enrollment table
CREATE TABLE Enrollment (
	ID			INT				PRIMARY KEY  AUTO_INCREMENT,
	Grade		Decimal(5,2),	
    StudentID	INT,
    CourseID	INT,
   FOREIGN KEY (StudentID) REFERENCES Student (ID),
   FOREIGN KEY (CourseID) REFERENCES Course (ID)
);
 
 -- insert some rows into the Student table
INSERT INTO Student VALUES
	(1, 'Amber', 'Kidwell', '90 Home St', 'Newport', 'KY', 41071, '1990-12-11', 
	'859-835-8988', 'hemmerlea2@gmail.com', '999-99-9999'),
    (2, 'Lindsay', 'Egan', '1 main st.', 'Ft.Thomas', 'KY', 41075, '1999-10-12', 
	'855-556-666', 'lindsayegan@gmail.com', '111-11-1111'),
    (3, 'Maria', 'Konerman', '5 code st.', 'Price Hill', 'OH', 45202, '1989-05-14', 
	'513-222-5555', 'maria@gmail.com', '333-33-3333'),
    (4, 'Anna', 'Bengel', '7 super st.', 'Cincinnati', 'OH', 41505, '1979-09-18', 
	'513-444-7777', 'anna@yahoo.com', '123-45-6789'),
    (5, 'David', 'McCann', '45 cool way', 'Southgate', 'KY', 41075, '1991-04-15', 
	'513-123-4567', 'david@gmail.com', '987-65-4321')
;
-- insert some test data for Course, instructor, and Enrollment
INSERT INTO Course VALUES
(1, 101,  'Art', 'Intro To Abstract Art'),
(2, 201,  'History', 'Intro To American History'),
(3, 301,  'Math', 'Intro To Algebra'),
(4, 401,  'Language Arts', 'Creative Writing');

INSERT INTO Instructor VALUES
(1, 'Lisa', 'Smith', 1),
(2, 'Marty', 'Schwartz', 2);

INSERT INTO Enrollment VALUES
(1, 80.00, 1, 1);

-- create a user and grant privileges to that user
CREATE USER SDB_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON sdb.* TO sdb_user@localhost;