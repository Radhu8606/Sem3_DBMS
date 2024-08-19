----------------------------------Sub Query-------------------------------
---------------------------------PART-A-----------------------------------
CREATE table Student_Dataa(
    RNo int,
    Name varchar(20),
    City varchar(30),
    Did int
)
insert into Student_Dataa(Rno,Name,City,Did)
VALUES
(101, 'Raju', 'Rajkot',10),
(102, 'Amit', 'Ahmedabad' ,20),
(103, 'Sanjay', 'Baroda' ,40),
(104, 'Neha', 'Rajkot' ,20),
(105, 'Meera', 'Ahmedabad' ,30),
(106, 'Mahesh', 'Baroda' ,10)

select * from Student_Data

CREATE table Acadamica(
    Rno int,
    Spi int,
    Bklog int
)
insert into Acadamica(Rno,Spi,Bklog)
VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105,7.0, 2),
(106, 8.9, 3)

select * from Acadamica

CREATE TABLE Department(
    Did int,
    Dname varchar(30)
)
insert into Department(Did,Dname)
VALUES
(10,'Computer'),
(20,'Electrical'),
(30,'Mechanical'),
(40,'Civil')

select * from Department

-----------1. Display details of students who are from computer department.
select * from Student_Dataa 
where Did = (select Did from Department where Dname = 'Computer')

-----------2. Displays name of students whose SPI is more than 8.
select Name from Student_Dataa
where No = (select Rno from Acadamica where Spi>8)

-----------3. Display details of students of computer department who belongs to Rajkot city.
select * from Student_Dataa
where Did = (select Did from Department where Dname = 'Computer')

-----------4. Find total number of students of electrical department.
select count(Did) from Student_Dataa
where Did = (select Did from Department where Dname = 'Electrical')

-----------5. Display name of student who is having maximum SPI.
select Name from Student_Dataa
where Rno = (select Rno from Acadamica where Spi = (select max(Spi) from Acadamica))

-----------6. Display details of students having more than 1 backlog.
select * from Student_Dataa
where Rno in (select Rno from Acadamica where Bklog > 1)

---------------------------------------PART-B---------------------------------------
---------------------1. Display name of students who are either from computer department or from mechanical department.
select Name from Student_Dataa
where Did in (select Did from Department where Dname='Computer' or Dname='Mechanical')

---------------------2. Display name of students who are in same department as 102 studying in.
select Name from Student_Dataa
where Did = (select )

-------------------------------------PART-C-------------------------------------
-------------------1. Display name of students whose SPI is more than 9 and who is from electrical department.
select * from Student_Dataa
where Did in (Select Did from Department where Dname = 'Electrical') and Rno in (select Rno from Acadamica where Spi>9.2)

-------------------2. Display name of student who is having second highest SPI.
SELECT Name 
FROM Student_Dataa 
WHERE Rno = (
    SELECT Rno 
    FROM Acadamica 
    WHERE Spi = (
        SELECT MAX(Spi) 
        FROM Acadamica 
        WHERE Spi < (SELECT MAX(Spi) FROM Acadamica)
    )
);

-------------------3. Display city names whose students branch wise SPI is 9.2
SELECT DISTINCT City FROM Student_Dataa
WHERE Rno IN (SELECT Rno FROM Acadamica WHERE Spi = 9);
