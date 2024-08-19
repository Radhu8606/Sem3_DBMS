create table Studen(
       StuID INT,
	   FirstName VARCHAR(25),
	   LastName VARCHAR(25),
	   Website VARCHAR(50),
	   City VARCHAR(25),
	   Address VARCHAR(100)
)

insert into Studen(StuID,FirstName,LastName,Website,City,Address)
values(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303 ''Vasant Kunj'' Rajkot')

insert into Studen(StuID,FirstName,LastName,Website,City,Address)
values(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad','"Ram Krupa" Raiya Road')

insert into Studen(StuID,FirstName,LastName,Website,City,Address)
values(1033, 'Kajal' ,'Trivedi', 'bigactivities.com', 'Baroda','Raj Bhavan Plot near garden' )

insert into Studen(StuID,FirstName,LastName,Website,City,Address)
values(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad','"Jig''s Home" Narol')

insert into Studen(StuID,FirstName,LastName,Website,City,Address)
values(1055, 'Harmit', 'Mitel', '@me.darshan.com', 'Rajkot','B-55 Raj Residency' )

insert into Studen(StuID,FirstName,LastName,Website,City,Address)
values(1066, 'Ashok', 'Jani', Null ,'Baroda','A502 Club House Building' )

select * from Studen
 --------------------------Part-A-------------------------------------
 ----------Display the name of students whose name starts with k
 select firstname from Studen
 where firstName like 'k%'

 ----------------Display the name of students whose name consists of five characters
 select firstname from Studen
 where FirstName like '_____'

 --------------Retrieve the first name & last name of students whose city name ends with a & contains six characters
 select Firstname,LastName from Studen
 where city like '_____a'

 ------------------Display all the students whose last name ends with ‘tel’
 select * from Studen
 where LastName like '%tel'

 ---------------------- all the students whose first name starts with ‘ha’ & ends with‘t’.
 select * from Studen
 where FirstName like 'ha%t'


 --------------------
 select * from Studen 
 where FirstName like 'k_y%'

 ------------------
 select FirstName from Studen
 where website is null and FirstName like '_____'

 -----------------------
 select * from Studen
 where LastName like '%jer'

 ---------------------
 select * from Studen
 where LastName like '[r,b]%'

 -----------------------
 select * from Studen
 where website is not null

 ---------------------
 select * from Studen
 where FirstName like'[A-H]%'

 -------------------
 select * from Studen
 where FirstName like'_[a,e,i,o,u]%'

 -------------------
 select FirstName from Studen
 where Website is null and FirstName like '_____%'

 -----------------
 select * from Studen
 where LastName like 'Pat%'

 ----------------
 select * from Studen
 where city not like 'b%'

 -------------------------------------------Part-B---------------------

 -----------------1.
 select * from Studen
 where FirstName like '[A-H]%'

 -------------2.
 select * from Studen
 where FirstName like 'H[a,e,i,o,u]%'

 -----------------3.
 select * from Studen
 where LastName not like '%a'

 ------------------------4.
 select * from Studen
 where FirstName not like '[a,e,i,o,u]%'

 ------------------------5.
 select * from Studen
 where Website like '%net%'

 ---------------------------------Part-C------------------------------

 ----------------------------1.
 select * from Studen
 where Address like '%-%'

 ----------------------------2.
 select * from Studen
where Address like '%''%' or Address like '%""%'

-----------------------------3.
select * from Studen
where Website like '%@%'

--------------------------------4.
select * from Studen
where FirstName like '____' or FirstName like '_____'