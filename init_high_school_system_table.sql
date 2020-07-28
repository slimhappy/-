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
(course_id VARCHAR(8),
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
select* from department;

INSERT INTO course VALUES("BIO-101","InTro.to Biology","Biology",4);
INSERT INTO course VALUES("BIO-301","Genetics","Biology",4);
INSERT INTO course VALUES("BIO-399","Computational","Biology",3);
INSERT INTO course VALUES("CS-101","Intro.to Computer Science","Comp.Sci.",4);
INSERT INTO course VALUES("CS-190","Game Design","Comp.Sci.",4);
INSERT INTO course VALUES("CS-315","Robotics","Comp.Sci.",3);
INSERT INTO course VALUES("CS-319","Image Processing","Comp.Sci.",3);
INSERT INTO course VALUES("CS-347","Database System Concepts","Comp.Sci.",3);
INSERT INTO course VALUES("EE-181","Intro.to Digital Systems","Elec.Eng.",3);
INSERT INTO course VALUES("FIN-201","Investment Banking","Finance",3);
INSERT INTO course VALUES("HIS-351","World History","History",3);
INSERT INTO course VALUES("MU-199","Music Video Production","Music",3);
INSERT INTO course VALUES("PHY-101","Physical Principles","Physics",4);
select* from course;

INSERT INTO instructor VALUES("22222","Einstein","Physics",95000);
INSERT INTO instructor VALUES("12121","Wu","Finance",90000);
INSERT INTO instructor VALUES("32343","EI Said","History",60000);
INSERT INTO instructor VALUES("45565","Katz","Comp.Sci.",75000);
INSERT INTO instructor VALUES("98345","Kim","Elec.Eng.",80000);
INSERT INTO instructor VALUES("76766","Crick","Biology",72000);
INSERT INTO instructor VALUES("10101","Srinivasan","Comp.Sci.",65000);
INSERT INTO instructor VALUES("58583","Califieri","History",62000);
INSERT INTO instructor VALUES("83821","Brandt","Comp.Sci.",92000);
INSERT INTO instructor VALUES("15151","Mozart","Music",40000);
INSERT INTO instructor VALUES("33456","Gold","Physics",87000);
INSERT INTO instructor VALUES("76543","Singh","Finance",80000);
select* from instructor;

INSERT INTO section VALUES("BIO-101","1","Summer",2009,"Painter","514","B");
INSERT INTO section VALUES("BIO-301","1","Summer",2010,"Painter","514","A");
INSERT INTO section VALUES("CS-101","1","Fall",2009,"Packard","101","H");
INSERT INTO section VALUES("CS-101","1","Spring",2010,"Packard","101","F");
INSERT INTO section VALUES("CS-190","1","Spring",2009,"Taylor","3128","E");
INSERT INTO section VALUES("CS-190","2","Spring",2009,"Taylor","3128","A");
INSERT INTO section VALUES("CS-315","1","Spring",2010,"Watson","120","D");
INSERT INTO section VALUES("CS-319","1","Spring",2010,"Watson","100","B");
INSERT INTO section VALUES("CS-319","2","Spring",2010,"Taylor","3128","C");
INSERT INTO section VALUES("CS-347","1","Fall",2009,"Taylor","3128","A");
INSERT INTO section VALUES("EE-181","1","Spring",2009,"Taylor","3128","C");
INSERT INTO section VALUES("FIN-201","1","Spring",2010,"Packard","101","B");
INSERT INTO section VALUES("HIS-351","1","Spring",2010,"Painter","514","C");
INSERT INTO section VALUES("MU-199","1","Spring",2010,"Packard","101","D");
INSERT INTO section VALUES("PHY-101","1","Fall",2009,"Watson","100","A");
select* from section;

INSERT INTO teaches VALUES("10101","CS-101","1","Fall",2009);
INSERT INTO teaches VALUES("10101","CS-315","1","Spring",2010);
INSERT INTO teaches VALUES("10101","CS-347","1","Fall",2009);
INSERT INTO teaches VALUES("12121","FIN-201","1","Spring",2010);
INSERT INTO teaches VALUES("15151","MU-199","1","Spring",2010);
INSERT INTO teaches VALUES("22222","PHY-101","1","Fall",2009);
INSERT INTO teaches VALUES("32343","HIS-351","1","Spring",2010);
INSERT INTO teaches VALUES("45565","CS-101","1","Spring",2010);
INSERT INTO teaches VALUES("45565","CS-319","1","Spring",2010);
INSERT INTO teaches VALUES("76766","BIO-101","1","Summer",2009);
INSERT INTO teaches VALUES("76766","BIO-301","1","Summer",2010);
INSERT INTO teaches VALUES("83821","CS-190","1","Spring",2009);
INSERT INTO teaches VALUES("83821","CS-190","2","Spring",2009);
INSERT INTO teaches VALUES("83821","CS-319","2","Spring",2010);
INSERT INTO teaches VALUES("98345","EE-181","1","Spring",2009);
select * from teaches;



DROP TABLE teaches;
DROP TABLE section;
DROP TABLE course;
DROP TABLE instructor;
DROP TABLE department;


