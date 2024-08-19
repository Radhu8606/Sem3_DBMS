create table EMP(
   EID int,
   ENAME varchar(25),
   Department varchar(25),
   Salary int,
   Joining_date datetime,
   City varchar(50)
)

insert into EMP(EID,ENAME,Department,Salary,Joining_date,City)
values(101,'Rahul','Admin',56000,'1-Jan-90','Rajkot')

insert into EMP(EID,ENAME,Department,Salary,Joining_date,City)
values(102,'Hardik','IT',18000,'25-Sep-90','Ahemdabad')

insert into EMP(EID,ENAME,Department,Salary,Joining_date,City)
values(103,'Bhavin','HR',25000,'14-May-91','Baroda')

insert into EMP(EID,ENAME,Department,Salary,Joining_date,City)
values(104,'Bhoomi','Admin',39000,'8-Feb-91','Rajkot')

insert into EMP(EID,ENAME,Department,Salary,Joining_date,City)
values(105,'Rohit','IT',17000,'23-Jul-90','Jamnagar')

insert into EMP(EID,ENAME,Department,Salary,Joining_date,City)
values(106,'Priya','IT',9000,'18-Oct-90','Ahemdabad')

insert into EMP(EID,ENAME,Department,Salary,Joining_date,City)
values(107,'Bhoomi','HR',34000,'25-Dec-91','Rajkot')

select * from EMP

-------------------------------------Part - A------------------------------------------------------
-------------1.Display the Highest, Lowest, Label the columns Maximum, Minimum respectively
select max(Salary) as Maximum , min(Salary) as Minimum from EMP

-------------2.Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.select avg(Salary) as Average_salary , sum(Salary) as Total_salary from EMP------------3.Find total number of employees of EMPLOYEE table.select count(EID) from EMP-----------4.Find highest salary from Rajkot city.select max(Salary) from EMPwhere City = 'Rajkot'----------5.Give maximum salary from IT department.select max(Salary) from EMPwhere Department='IT'--------6.Count employee whose joining date is after 8-feb-91.select count(EID) from EMPwhere Joining_date = '8-Feb-91'-------7.Display average salary of Admin department.select avg(Salary) from EMPwhere Department = 'Admin'-------8.Display total salary of HR department.select sum(Salary) from EMPwhere Department = 'HR'-------9.Count total number of cities of employee without duplication.select count(distinct city) from EMP-------10.Count unique departments.select count(distinct Department) from EMP------11.Give minimum salary of employee who belongs to Ahmedabad.select min(Salary) from EMPwhere city = 'Ahemdabad'------12.Find city wise highest salary.select max(Salary) from EMPgroup by City------13.Find department wise lowest salary.select min(Salary) from EMPgroup by Department------14.Display city with the total number of employees belonging to each city.select count(EID) from EMPgroup by City-----15.Give total salary of each department of EMP table.select sum(Salary) from EMPgroup by Department------16.Give average salary of each department of EMP table without displaying the respective department nameselect avg(Salary) from EMP group by Department--------------------------PART - B---------------------------------------------1.Count the number of employees living in Rajkot.select count(EID) from EMPwhere City = 'Rajkot'------2.Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.select max(Salary) - min(Salary) from EMP-------3.Display the total number of employees hired before 1st January, 1991.select count(EID) from EMPwhere Joining_date < '1-Jan-91'---------------------------------PART - C--------------------------------------1.Count the number of employees living in Rajkot or Baroda.select count(EID) from EMPwhere City = 'Rajkot' or City = 'Baroda'---------2.Display the total number of employees hired before 1st January, 1991 in IT department.select count(EID) from EMPwhere Joining_date < '1-Jan-91' and Department = 'IT'------3.Find the Joining Date wise Total Salaries.select count(EID) from EMPgroup by Joining_date-------4.Find the Maximum salary department & city wise in which city name starts with ‘R’.select max(Salary) from EMPgroup by Department , Cityhaving City like 'R%'