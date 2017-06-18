create database Crazy_Human
go

use Crazy_Human
go

-------------------Student Information------------------
create table Student
(
StuNo varchar(12) primary key not null,
StuPassword varchar(60) not null,
StuName nvarchar(10) not null,
StuGender nchar(10) not null,
Stuidno nvarchar(20) not null,
StuAddress nvarchar(20) not null,
ClassName varchar(60) foreign key references Class(ClassName) not null,
StuDOB date
)
go

select * from Student

------------------------ Teacher Information--------------
create table Teacher 
(
TeacherId varchar(60) primary key,
TeacherPassword varchar(60),
TeacherName varchar(60),
Department varchar(60),
Major varchar(60)
)
go

select * from Teacher

------------------------Class Information----------------
create table Class
(
ClassName varchar(60) primary key,
ClassGrade int,
ClassDate Date,
Department varchar(60),
Major varchar(60)
)
go

insert into Class values('Java01',2014,'2014-09-01','college of computer science ','software engineering');
insert into Class values('Java02',2014,'2014-09-01','college of chemistry ','chemistry');
insert into Class values('Java03',2014,'2014-09-01','college of economic','economic management');
insert into Class values('Java04',2014,'2014-09-01','college of chemistry','chemistry');

select * from Class

------------------------Course Information----------------
create table Course
(
CourseName varchar(60) primary key,
CourseId varchar(60),
CourseType varchar(60)
)
go

insert into Course values('English','1','A');
insert into Course values('Chinese','2','B');
insert into Course values('History','3','C');
insert into Course values('Physics','4','D');
insert into Course values('Chemistry','5','E');
insert into Course values('Math','6','F');
insert into Course values('Biology','7','G');
insert into Course values('Music','8','H');

select * from Course

------------------Classroom Information-----------------
create table ClassRoom
(
ClassRoomNo varchar(6) primary key not null,
Building varchar(20) not null,
)
go
insert into ClassRoom values('NO_9','BoZhi'),
                            ('NO_10','BoYi'),
                            ('NO_11','BoZhi'),
                            ('NO_12','BoYi'),
							('NO_13','BoZhi'),
							('NO_14','BoYi'),
							('NO_15','BoZhi'),
							('NO_16','BoYi')

select * from ClassRoom

-----------------------ClassCourse Information-----------------
create table ClassCourse
(
ClassName varchar(60) foreign key references Class(ClassName) not null,
ClassRoomNo varchar(6) foreign key references ClassRoom(ClassRoomNo)  not null,
TeacherId varchar(60) foreign key references Teacher(TeacherId) not null,
CourseName varchar(60) foreign key references Course(CourseName) not null,
weekly int not null
)
go

insert into ClassCourse values('Java01','NO_1','T001','English',2),
                              ('Java02','NO_2','T002','Chinese',4),
                              ('Java03','NO_3','T003','Math',6),
                              ('Java04','NO_4','T004','English',8),
							  ('Java01','NO_5','T005','History',2),
                              ('Java02','NO_6','T006','English',4),
                              ('Java03','NO_7','T002','Physics',6),
                              ('Java04','NO_8','T003','Chemistry',8)

select * from ClassCourse







