create table StudentInfo(
    Rno int,
    Name varchar(30),
    Branch varchar(20),
    Spi int,
    Bklog int
)
insert into StudentInfo(Rno,Name,Branch,Spi,Bklog)
values
(101 ,'Raju' ,'CE' ,8.80, 0),
(102 ,'Amit' ,'CE' ,2.20, 3),
(103 ,'Sanjay' ,'ME' ,1.50, 6),
(104 ,'Neha' ,'EC' ,7.65, 1),
(105 ,'Meera' ,'EE' ,5.52, 2),
(106 ,'Mahesh' ,'EC' ,4.50, 3)

select * from StudentInfo
------------------------------------PART-A-------------------

-----------------1. Create a view Personal with all columns.
CREATE view VW_Personal as
   select * from StudentInfo;
   select * from VW_Personal

-----------------2. Create a view Student_Details having columns Name, Branch & SPI. 
CREATE view VW_Student_Details as 
 select Name,Branch,Spi from StudentInfo
 select * from VW_Student_Details

-----------------3. Create a view AcademicData having columns RNo, Name, Branch.
CREATE view VW_AcademicData as 
 select Rno,Name,Branch from StudentInfo
 select * from VW_AcademicData

-----------------4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
CREATE VIEW VW_Student_bklog as 
select * from StudentInfo
where Bklog >2
SELECT * from VW_Student_bklog

-----------------5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.
CREATE VIEW VW_Student_Pattern as 
select RNo,Name,Branch from StudentInfo
where Name like '____'
select * from VW_Student_Pattern

-----------------6. Insert a new record to AcademicData view. (107, Meet, ME)
insert into VW_AcademicData
values(107, 'Meet', 'ME')
select * from VW_AcademicData

-----------------7. Update the branch of Amit from CE to ME in Student_Details view.
update VW_Student_Details
set Branch = 'ME'
where Name = 'Amit'
SELECT * from VW_Student_Details

-----------------8. Delete a student whose roll number is 104 from AcademicData view.
DELETE VW_AcademicData
where Rno = 104
select * from VW_AcademicData

---------------------------PART-B---------------------------------------
----------------1. Create a view that displays information of all students whose SPI is above 8.5
CREATE VIEW VW_Information AS
select * from StudentInfo
where Spi>8.5
select * from VW_Information

----------------2. Create a view that displays 0 backlog students.
CREATE VIEW VW_Display AS
select * from StudentInfo
where Bklog = 0
select * from VW_Display

----------------3. Create a view Computerview that displays CE branch data only.
CREATE view VW_Computerview AS
select * from StudentInfo
where Branch = 'CE'
select * from VW_Computerview

-----------------------------------PART-C-----------------------------
-----------------1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
CREATE VIEW VW_Result_EC AS
select Name,Spi from StudentInfo
where Spi<5 and Branch = 'EC'
select * from VW_Result_EC

-----------------2. Update the result of student MAHESH to 4.90 in Result_EC view.
UPDATE VW_Result_EC
set Spi = 4.90 
where Name = 'Mahesh'
select * from VW_Result_EC

-----------------3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.
CREATE VIEW VW_Stu_Bklog AS
select Rno,Name,Bklog from StudentInfo
where Bklog>5 and Name like 'M%'
select * from VW_Stu_Bklog

-----------------4. Drop Computerview form the database.
drop view VW_Computerview