CREATE table Attends(
semester varchar(10) NOT NULL,
courseCode varchar(10) NOT NULL,
yearr int NOT NULL,
sectionId int NOT NULL,
ename varchar(25) NOT NULL,
issn varchar(11) NOT NULL,
sssn varchar(11) NOT NULL,
score int
);

CREATE table Course(
ects int NOT NULL,
courseName varchar(20) NOT NULL,
courseCode varchar(10) NOT NULL,
numHours int,
preReqCourseCode varchar(10),
PRIMARY KEY(courseCode)
);

CREATE table Curricula(
currCode varchar(10) NOT NULL,
gradOrUGrad bit NOT NULL,
dName varchar(40) NOT NULL,
PRIMARY KEY (currCode)
);

CREATE table curriculaCourses(
courseCode varchar(10) NOT NULL,
dName varchar(40) NOT NULL,
currCode varchar(10) NOT NULL
);

CREATE table Department(
dName varchar(40) NOT NULL,
budget int,
headSSn varchar(11) NOT NULL,
buildingName varchar(40),
PRIMARY KEY (dName)
);

CREATE table emails(
sssn varchar(11) NOT NULL,
email varchar(30) NOT NULL,
PRIMARY KEY(email)
);

CREATE table enrolled(
sssn varchar(11) NOT NULL,
lettergrade varchar(2),
semester varchar(10),
courseCode varchar(10) NOT NULL,
yearr int NOT NULL,
sectionId int NOT NULL,
issn varchar(11) NOT NULL,
hourr int NOT NULL,
dayy varchar(10) NOT NULL
);

CREATE table Exam(
date date NOT NULL,
semester varchar(10) NOT NULL,
courseCode varchar(10) NOT NULL,
yearr int NOT NULL,
sectionId int NOT NULL,
ename varchar(25) NOT NULL,
issn varchar(11) NOT NULL,
PRIMARY KEY(ename)
);

CREATE table GradsInProjects(
PrjleadSsn varchar(11) NOT NULL,
prName varchar(40) NOT NULL,
gradsssn varchar(11) NOT NULL,
workingHours int
);

CREATE table gradstudent(
sssn varchar(11) NOT NULL,
advisorSsn varchar(11) NOT NULL
);

CREATE table InstrInProjects(
PrjleadSsn varchar(11) NOT NULL,
prName varchar(40) NOT NULL,
issn varchar(11) NOT NULL,
workingHours int
);


CREATE table Instructor(
ssn varchar(11) NOT NULL,
iName varchar(40) NOT NULL,
rankk varchar(40) NOT NULL,
baseSalary int NOT NULL,
extraSalary int,
dName varchar(40) NOT NULL,
PRIMARY KEY(ssn)
);

CREATE table prevDegrees(
college varchar(40) NOT NULL,
degree varchar(40) NOT NULL,
year int NOT NULL,
gradsssn varchar(11) NOT NULL,
PRIMARY KEY(college,degree,year)
);

CREATE table Project(
leadSsn varchar(11) NOT NULL,
prName varchar(40) NOT NULL,
budget int,
startDate date,
endDate date,
subject varchar(40) NOT NULL,
contrDName varchar(40) NOT NULL,
PRIMARY KEY(prName)
);

CREATE table sectionn(
quota int,
semester varchar(10) NOT NULL,
courseCode varchar(10) NOT NULL,
yearr int NOT NULL,
sectionId int NOT NULL,
issn varchar(11) NOT NULL,
PRIMARY KEY(semester,yearr,sectionId)
);

CREATE table student(
sssn varchar(11) NOT NULL,
gradorUgrad bit NOT NULL,
advisorSsn varchar(11) NOT NULL,
currCode varchar(10) NOT NULL,
sName varchar(40) NOT NULL,
studentId varchar(7) NOT NULL,
PRIMARY KEY(sssn)
);

CREATE table TimeSlot(
dayy varchar(10) NOT NULL,
hourr int NOT NULL,
PRIMARY KEY(dayy, hourr)
);

INSERT INTO course (ects,courseName,courseCode,numHours,preReqCourseCode) VALUES 
(6,'CS1111','1111',5,NULL),
(6,'CS1112','1112',7,'1111'),
(5,'ARC2221','2221',4, NULL),
(5,'BS3331','3331',3, NULL),
(5,'SL4441','4441',5, NULL),
(5,'SL4442','4442',4,'4441'),
(5,'CE5551','5551',3,NULL),
(5,'FA6661','6661',5, NULL),
(6,'FA6662','6662',7, NULL),
(6,'BE7771','7771',5,NULL),
(6,'BE7772','7772',7,'7771'),
(5,'ECO8881','8881',5, NULL),
(5,'PS9991','9991',3, NULL),
(1,'HIS1001','1001',2, NULL);

INSERT INTO Department (dName,budget,headSSn,buildingName) VALUES
('Computer Science Department',30000,'111111','LMF'),
('Architecture and design',150000,'222222','DK'),
('Biological Sciences Department',300000,'333333','LMF'),
('Science and Literature Department',120000,'444444','LMF'),
('Chemical Engineering Department',400000,'555555','LMF'),
('Fine arts Department',100000,'666666','DMF'),
('Biomedical Engineering Department',250000,'777777','LMF'),
('Economics and administrative sciences D',80000,'888888','DMF'),
('Psychology Department',50000,'999999','DK'),
('History Department',10000,'000000','DK');

INSERT INTO curricula (currCode, gradOrUGrad, dName)
VALUES 
('CSGRADC', 1, 'Computer Science Department'), 
('CSUGRADC', 0, 'Computer Science Department'),
('ARCGRADC', 1, 'Architecture and design'),
('ARCUGRADC', 0, 'Architecture and design'),
('BSGRADC', 1, 'Biological Sciences Department'),
('BSUGRADC', 0, 'Biological Sciences Department'),
('SLGRADC', 1, 'Science and Literature Department'),
('SLUGRADC', 0, 'Science and Literature Department'),
('CEGRADC', 1, 'Chemical Engineering Department'),
('CEUGRADC', 0, 'Chemical Engineering Department'),
('FAGRADC', 1, 'Fine arts Department'),
('FAUGRADC', 0, 'Fine arts Department'),
('BEGRADC', 1, 'Biomedical Engineering Department'),
('BEUGRADC', 0, 'Biomedical Engineering Department'),
('EASGRADC', 1, 'Economics and administrative sciences D'),
('EASUGRADC', 0, 'Economics and administrative sciences D'),
('PSGRADC', 1, 'Psychology Department'),
('PSUGRADC', 0, 'Psychology Department'),
('HISGRADC', 1, 'History Department'),
('HISUGRADC', 0, 'History Department');

INSERT INTO curriculacourses (courseCode, dName, currCode)
VALUES 
('1111','Computer Science Department','CSUGRADC'),
('1112','Computer Science Department','CSGRADC'),
('2221','Architecture and design','ARCUGRADC'),
('3331','Biological Sciences Department','BSUGRADC'),
('4441','Science and Literature Department','SLUGRADC'),
('4442','Science and Literature Department','SLGRADC'),
('5551','Chemical Engineering Department','CEUGRADC'),
('6661','Fine arts Department','FAUGRADC'),
('6662','Fine arts Department','FAGRADC'),
('7771','Biomedical Engineering Department','BEUGRADC'),
('7772','Biomedical Engineering Department','BEGRADC'),
('8881','Economics and administrative sciences D','EASUGRADC'),
('9991','Psychology Department','PSUGRADC'),
('1001','History Department','HISUGRADC');

INSERT INTO Instructor (ssn, iName, rankk, baseSalary, extraSalary, dName)
VALUES 
('111111','Coşkun','Prof',12000,8000,'Computer Science Department'),
('222222','Arınç','Prof',11000,6000,'Architecture and design'),
('333333','Birsen','Dr',8000,4000,'Biological Sciences Department'),
('444444','Sezer','Prof',9000,5000,'Science and Literature Department'),
('555555','Cemil','Dr',7000,3000,'Chemical Engineering Department'),
('666666','Fatma','Dr',6000,4000,'Fine arts Department'),
('777777','Biruni','Prof',10000,8000,'Biomedical Engineering Department'),
('888888','Ece','Prof',8000,6000,'Economics and administrative sciences D'),
('999999','Pelin','Dr',10000,9000,'Psychology Department'),
('000000','Harun','Prof',6000,6000,'History Department');


INSERT INTO project (leadSsn,prName,budget,startDate,endDate,subject,contrDName) VALUES
('111111','Project1',18000,'2021-01-10','2022-01-10','Computers','Computer Science Department'),
('222222','Project2',28000,'2021-02-11','2022-03-21','Bridges','Architecture and design'),
('333333','Project3',12000,'2021-02-11','2022-01-12','Mobile Phones','Computer Science Department'),
('444444','Project4',11000,'2021-04-13','2022-01-09','Skyscrapers','Architecture and design'),
('555555','Project5',7000,'2021-05-14','2022-03-02','Data Mining','Computer Science Department'),
('666666','Project6',9000,'2021-06-14','2022-03-02','Pharmacy','Chemical Engineering Department'),
('777777','Project7',33000,'2021-07-10','2022-08-12','Corona virus','Biomedical Engineering Department'),
('888888','Project8',20000,'2021-08-11','2022-11-19','Economical issues of Turkey','Economics and administrative sciences D'),
('999999','Project9',12000,'2021-09-12','2022-09-17','Psychological disorders','Psychology Department'),
('000000','Project0',15000,'2021-10-13','2022-04-25','History of art','History Department');


INSERT INTO InstrInProjects (PrjleadSsn,prName,issn,workingHours) VALUES
('111111','Project1','111111',3),
('222222','Project2','111111',5),
('333333','Project3','222222',2),
('444444','Project4','222222',6),
('555555','Project5','333333',4),
('666666','Project6','333333',3),
('777777','Project7','444444',5),
('888888','Project8','444444',2),
('999999','Project9','555555',6),
('000000','Project0','555555',4);

INSERT INTO sectionn (quota,semester,courseCode,yearr,sectionId,issn) VALUES
(50,'Fall','1111',2018,1,'111111'),
(60,'Fall','1112',2018,2,'111111'),
(70,'Fall','2221',2018,3,'222222'),
(80,'Fall','3331',2019,1,'333333'),
(90,'Fall','4441',2019,2,'444444'),
(100,'Fall','4442',2019,3,'444444'),
(110,'Spring','5551',2020,1,'555555'),
(120,'Spring','6661',2020,2,'666666'),
(130,'Spring','6662',2020,3,'666666'),
(140,'Spring','7771',2021,1,'777777'),
(150,'Spring','7772',2021,2,'777777'),
(50,'Spring','8881',2021,3,'888888'),
(60,'Spring','9991',2022,1,'999999'),
(70,'Spring','1001',2022,2,'000000');

INSERT INTO exam (date,semester,courseCode,yearr,sectionId,ename,issn) VALUES
('2022-03-06','Fall','1111',2018,1,'CS1111M','111111'),
('2021-03-07','Fall','1112',2018,2,'CS1112M','111111'),
('2021-03-08','Fall','2221',2018,3,'ARC2221M','222222'),
('2022-03-09','Fall','3331',2019,1,'BS3331M','333333'),
('2018-06-01','Fall','4441',2019,2,'SL4441M','444444'),
('2018-06-02','Fall','4442',2019,3,'SL4442M','444444'),
('2018-06-02','Spring','5551',2020,1,'CE5551M','555555'),
('2019-06-03','Spring','6661',2020,2,'FA6661M','666666'),
('2022-06-04','Spring','6662',2020,3,'FA6662M','666666'),
('2018-06-05','Spring','7771',2021,1,'BE7771M','777777'),
('2018-06-05','Spring','7772',2021,2,'BE7772M','777777'),
('2018-06-05','Spring','8881',2021,3,'ECO8881M','888888'),
('2018-06-05','Spring','9991',2022,1,'PS9991M','999999'),
('2022-03-05','Spring','1001',2022,2,'HIS1001M','000000');

INSERT INTO student (sssn,gradorUgrad,advisorSsn,currCode,sName,studentId) VALUES
('1820800',1,'111111','CSGRADC','Muhammed','2182080'),
('1820801',0,'222222','PSUGRADC','Alperen','2182081'),
('1820802',1,'333333','BSGRADC','Alp','2182082'),
('1820803',0,'444444','ARCUGRADC','Eren','2182083'),
('1820804',1,'555555','SLGRADC','Fazlı','2182084'),
('1820805',0,'666666','BSUGRADC','Aslı','2182085'),
('1820806',1,'777777','FAGRADC','Kerem','2182086'),
('1820807',0,'888888','CEUGRADC','Çağla','2182087'),
('1820808',1,'999999','HISGRADC','Aleyna','2182088'),
('1820809',0,'000000','FAUGRADC','Helin','2182089');

INSERT INTO attends (semester,courseCode,yearr,sectionId,ename,issn,sssn,score) VALUES
('Fall','1111',2018,1,'CS1111M','111111','1820801',29),
('Fall','1112',2018,2,'CS1112M','111111','1820802',38),
('Fall','2221',2018,3,'ARC2221M','222222','1820803',47),
('Fall','3331',2019,1,'BS3331M','333333','1820803',56),
('Fall','4441',2019,2,'SL4441M','444444','1820805',65),
('Fall','4442',2019,3,'SL4442M','444444','1820806',74),
('Spring','5551',2020,1,'CE5551M','555555','1820807',83),
('Spring','6661',2020,2,'FA6661M','666666','1820807',92),
('Spring','6662',2020,3,'FA6662M','666666','1820800',11),
('Spring','7771',2021,1,'BE7771M','777777','1820801',22),
('Spring','7772',2021,2,'BE7772M','777777','1820802',33),
('Spring','8881',2021,3,'ECO8881M','888888','1820809',44),
('Spring','9991',2022,1,'PS9991M','999999','1820805',55),
('Spring','1001',2022,2,'HIS1001M','000000','1820809',66);

INSERT INTO emails (sssn,email) VALUES
('1820800', '800@isik.edu.tr'),
('1820801', '801@isik.edu.tr'),
('1820802', '802@isik.edu.tr'),
('1820803', '803@isik.edu.tr'),
('1820804', '804@isik.edu.tr'),
('1820805', '805@isik.edu.tr'),
('1820806', '806@isik.edu.tr'),
('1820807', '807@isik.edu.tr'),
('1820808', '808@isik.edu.tr'),
('1820809', '809@isik.edu.tr');

INSERT INTO enrolled (sssn,lettergrade,semester,courseCode,yearr,sectionId,issn,hourr,dayy) VALUES
('1820801', 'DC','Fall','1111',2018,1,'111111',123,'Monday'),
('1820802', 'CB','Fall','1112',2018,2,'111111',234,'Tuesday'),
('1820803', 'FF','Fall','2221',2018,3,'222222',123,'Wednesday'),
('1820803', 'CB','Fall','3331',2019,1,'333333',567,'Thursday'),
('1820805', 'FF','Fall','4441',2019,2,'444444',234,'Friday'),
('1820806', 'BA','Fall','4442',2019,3,'444444',456,'Monday'),
('1820807', 'CC','Spring','5551',2020,1,'555555',567,'Tuesday'),
('1820807', 'DC','Spring','6661',2020,2,'666666',567,'Wednesday'),
('1820800', 'DD','Spring','6662',2020,3,'666666',345,'Thursday'),
('1820801', 'CC','Spring','7771',2021,1,'777777',567,'Friday'),
('1820802', 'DD','Spring','7772',2021,2,'777777',345,'Thursday'),
('1820809', 'BA','Spring','8881',2021,3,'888888',345,'Thursday'),
('1820805', 'CC','Spring','9991',2022,1,'999999',345,'Thursday'),
('1820809', 'FF','Spring','1001',2022,2,'000000',345,'Thursday');

INSERT INTO GradsInProjects (PrjleadSsn,prName,gradsssn,workingHours) VALUES
('000000','Project0','1820800',4),
('222222','Project2','1820802',5),
('444444','Project4','1820804',6),
('666666','Project6','1820806',3),
('888888','Project8','1820808',2);

INSERT INTO gradstudent(sssn,advisorSsn) VALUES
('1820800','000000'),
('1820802','222222'),
('1820804','444444'),
('1820806','666666'),
('1820808','888888');

INSERT INTO prevdegrees (college,degree,year,gradsssn) VALUES
('ABC College','bachelor',4,'1820800'),
('BAC College','bachelor',4,'1820802'),
('BCA College','bachelor',4,'1820804'),
('CBA College','bachelor',4,'1820806'),
('CAB College','bachelor',4,'1820808');

SELECT S.studentId, S.sName, E.email, S.gradorUgrad
FROM student S
LEFT JOIN department D
ON D.headSSn = S.advisorSsn
JOIN emails E
ON S.sssn = E.sssn
WHERE D.dName = 'Computer Science Department';

SELECT S.studentId, S.sName, I.iName
FROM Instructor I
LEFT JOIN student S
ON S.advisorSsn = I.ssn 
INNER JOIN department D
ON D.headSSn = I.ssn
WHERE D.dName = 'Fine arts Department';

SELECT *
FROM Instructor I
INNER JOIN department D
ON I.ssn = D.headSSn
WHERE D.dName='Biological Sciences Department';

SELECT C.courseCode, C.courseName, C.ects
FROM course C
INNER JOIN sectionn S
ON C.courseCode = S.courseCode
LEFT JOIN Instructor I
ON S.issn = I.ssn
WHERE I.iName = 'Birsen' AND S.yearr ='2019' AND S.semester ='Fall' ;

SELECT DISTINCT rankk, iName
FROM Instructor
LEFT JOIN sectionn S
ON Instructor.ssn = S.issn
INNER JOIN course C
ON C.courseCode = S.courseCode
WHERE S.yearr <> '2019' AND S.semester <> 'Fall' ;

SELECT sName, courseName, S.semester, S.yearr
FROM student
LEFT JOIN sectionn S
ON student.advisorSsn = S.issn
INNER JOIN course
ON course.courseCode = S.courseCode
WHERE course.courseName = 'CS1111' AND S.yearr = '2018' AND S.semester = 'Fall' ;


SELECT ST.sName, C.courseName,S.semester, I.iName ,S.yearr
FROM student ST 
LEFT JOIN Instructor I
ON I.ssn = ST.advisorSsn
INNER JOIN sectionn S
ON ST.advisorSsn = S.issn
INNER JOIN course C
ON C.courseCode = S.courseCode
WHERE C.courseName = 'SL4441' AND S.yearr = '2019' AND S.semester = 'Fall' AND S.sectionId = 2;

SELECT C.courseCode, C.courseName, C.ects
FROM Course C
LEFT JOIN curriculaCourses CC
ON C.courseCode = CC.courseCode
INNER JOIN student S
ON CC.currCode = S.currCode
WHERE S.sName = 'Alperen'

SELECT E.courseCode, E.sectionId , E.dayy, E.hourr
FROM enrolled E
INNER JOIN student S
ON E.sssn = S.sssn
WHERE E.yearr = 2022 AND S.sName = 'Aslı'

SELECT E.courseCode, E.yearr , E.semester, E.lettergrade
FROM enrolled E
LEFT JOIN student S
ON E.sssn = S.sssn 
WHERE S.sName = 'Helin'

SELECT C.courseCode, E.lettergrade
FROM Course C
LEFT JOIN enrolled E
ON C.courseCode = E.courseCode 
WHERE C.courseCode = '1111' AND E.yearr = 2018 AND E.semester = 'Fall'

SELECT A.ename, A.score
FROM Attends A
JOIN student S ON A.sssn = S.sssn
WHERE S.sName = 'Çağla' AND A.courseCode = '6661';

SELECT *
FROM Project
WHERE contrDName = N'Economics and administrative sciences D';

SELECT S.sName,
    (SELECT I.iName
     FROM Project P
     LEFT JOIN Instructor I
     ON P.leadSsn = I.ssn
     WHERE P.prName = 'Project4') AS "PrjLeadName", 
    (SELECT I.iName
     FROM InstrInProjects IIP
     LEFT JOIN Instructor I
     ON IIP.issn = I.ssn
     WHERE IIP.prName = 'Project4') AS "InstructorName"
FROM GradsInProjects GIP 
LEFT JOIN Student S
ON GIP.gradsssn = S.sssn AND GIP.prName = 'Project4'
WHERE S.sName IS NOT NULL;

SELECT I.ssn, I.iName, (workingHours * 100)
FROM InstrInProjects IIP
LEFT JOIN Instructor I
ON IIP.issn = I.ssn
WHERE IIP.prName = 'Project4';

SELECT (IIP.workingHours*100 + (ROUND(CONVERT(float,CONCAT(C.numHours,'.',S.yearr-10)),2)*50) + (CONVERT(float, COUNT(G.sssn)) *25)) AS "Overall Extra Payment"
FROM Instructor I
LEFT JOIN InstrInProjects IIP
ON I.ssn = IIP.issn
LEFT JOIN sectionn S
ON I.ssn = S.issn
INNER JOIN course C
ON S.courseCode = C.courseCode
LEFT JOIN gradStudent G
ON G.advisorSsn = I.ssn
WHERE S.semester = 'Fall' AND S.yearr = 2018 AND I.iName = 'Arınç'
GROUP BY I.ssn, I.iName, IIP.workingHours, C.numHours,S.yearr

SELECT AVG(baseSalary), D.dName
FROM Department D
LEFT JOIN Instructor I
ON I.dName = D.dName
GROUP BY D.dName