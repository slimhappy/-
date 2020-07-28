CREATE TABLE department
(dept_name VARCHAR(20),
building VARCHAR(15),
budget NUMERIC(12,2),
PRIMARY KEY(dept_name));

CREATE TABLE course
(course_id VARCHAR(7),
title VARCHAR(50),
dept_name VARCHAR(20),
credits NUMERIC(2,0),
PRIMARY KEY(course_id),
FOREIGN KEY(dept_name) REFERENCES department(dept_name) ON DELETE CASCADE);

CREATE TABLE instructor
(ID VARCHAR(5),
name VARCHAR(20) NOT NULL,
dept_name VARCHAR(20),
salary NUMERIC(8,2),
PRIMARY KEY (ID),
FOREIGN KEY (dept_name) REFERENCES department(dept_name) ON DELETE CASCADE);

CREATE TABLE section
(course_id VARCHAR(5),
sec_id VARCHAR(8),
semester VARCHAR(6),
year NUMERIC(4,0),
building VARCHAR(15),
room_number VARCHAR(7),
time_slot_id VARCHAR(4),
PRIMARY KEY(course_id,sec_id,semester,year),
FOREIGN KEY(course_id) REFERENCES course(course_id) ON DELETE CASCADE);

CREATE TABLE teaches
(ID VARCHAR(5),
course_id VARCHAR(8),
sec_id VARCHAR(8),
semester VARCHAR(6),
year NUMERIC(4,0),
PRIMARY KEY(ID,course_id,sec_id,semester,year),
FOREIGN KEY(course_id,sec_id,semester,year) REFERENCES section(course_id,sec_id,semester,year)ON DELETE CASCADE);


INSERT INTO department VALUES ("Biology","Watson",90000);
INSERT INTO department VALUES ("Comp.Sci.","Taylor",100000);
INSERT INTO department VALUES ("Elec.Eng.","Taylor",85000);
INSERT INTO department VALUES ("Finance","Painter",120000);
INSERT INTO department VALUES ("History","Painter",50000);
INSERT INTO department VALUES ("Music","Packard",80000);
INSERT INTO department VALUES ("Physics","Watson",70000);





DROP TABLE teaches;
DROP TABLE section;
DROP TABLE course;
DROP TABLE instructor;
DROP TABLE department;


