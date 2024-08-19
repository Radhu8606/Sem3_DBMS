-------------------create and insert--------------------------
-------------------Table-1------------------------------------
create table Faculty(
           ID int,
		   NAME varchar(50),
		   Moblile char(10),
		   City varchar(15),
		   Branch varchar(15)
)
insert into Faculty(ID,NAME,Moblile,City,Branch)
values(258,'Prof.Ankit Patel','8325845127','Jetpur','Electrical')

insert into Faculty(ID,NAME,Moblile,City,Branch)
values(742,'Prof.Ketan Parmar','9123141578','Baroda','Computer')

insert into Faculty(ID,NAME,Moblile,City,Branch)
values(325,'Prof.Manan Doshi','9223251578','Gondal','Civil')

insert into Faculty(ID,NAME,Moblile,City,Branch)
values(125,'Prof.Mitesh Manek','7878454512','Rajkot','Computer')

insert into Faculty(ID,NAME,Moblile,City,Branch)
values(312,'Prof.Ketan Akbari','9824485641','Rajkot','Civil')

insert into Faculty(ID,NAME,Moblile,City,Branch)
values(457,'Prof.Bhavin Patel','9825411111','Jamnagar','Mechanical')

------------------------Select------------------------------------------------
----------------------Excersice-1---------------------------------------------
select * from Faculty

select NAME,Branch from Faculty

select ID,Moblile,City from Faculty

select* from Faculty 
where City = 'Rajkot'

select Name from Faculty
where ID<300

select Name from Faculty
where Branch = 'Computer'

select * from Faculty
where Moblile is null

select top 2 *from Faculty;

select top 10 percent * from Faculty

select distinct Branch from Faculty

select distinct City from Faculty

select * from Faculty
where Branch='Computer' and City='Rajkot'

select * from Faculty
where Branch='Civil' and ID>300

select * from Faculty
where Branch = 'Civil' or Branch = 'Electrical'

select * from Faculty
where Branch in ('Computer' , 'Civil')

select * from Faculty 
where City <> 'Baroda'

select * from Faculty
where ID between 100 and 400

----------------------Select into--------------------------------
create table Cri(
         NAME varchar(50),
		 City varchar(15),
		 Age int
)
insert into Cri(NAME,City,Age)
Values('Sachin Tendulker','Mumbai',30)

insert into Cri(NAME,City,Age)
Values('Rahul Dravid','Bombay',35)

insert into Cri(NAME,City,Age)
Values('M.S.Dhoni','Jarkhand',31)

insert into Cri(NAME,City,Age)
Values('Suresh Raina','Gujrat',30)

select *into Worlds from Cri;

select NAME,City into T from Cri; 

select * into I from Cri
where 0=1

select * into B from Cri
where 0=1

insert into B 
select*from Cri
where City='Mumbai'

insert into I 
select*from Cri
where Age>32

------------------------Update-------------------------------
update Faculty
set Branch='CSE'
where Branch = 'Computer'

update Faculty
set Moblile ='9999988888'
where Name='Prof.Ankit Patel'

update Faculty
set City='Hadala'
where City='Rajkot'

update Faculty
set Moblile = null
where Name='Prof.Bhavin Patel'

update Faculty
set ID = null
where Name='Prof.Ketan Akbari'

update Faculty
set ID = 'CSE_temp_01'//aa nai thai bcoz agal table ma data type int 6e
where ID is null

update Faculty
set Moblile = '9999977777'
where Moblile is null

---------------------------Delete and Alter--------------------------
delete from Faculty 
where ID < 200

delete from Faculty
where Branch = 'Mechanical'

delete from Faculty
where Branch is null

delete from Faculty
where City in('Jetpur' , 'Gondal')

Delete from Faculty//badhu delete thase etle execute nai kriyu

alter table Faculty
add Salary int

alter table Faculty
add designation varchar(12),qualification varchar(13)

alter table Faculty
drop column qualification

alter table Faculty
drop column designation,City

------------------------rename,truncate,drop-------------------------------
SP_RENAME 'Faculty.NAME' , Full_NAME;