
----------------------------MATHS FUNCTION------------------------------
---------------------------PART_A---------------------------------------
------------------------1. Display the result of 5 multiply by 30.
select 5*30 as multplication

------------------------2. Find out the absolute value of -25, 25, -50 and 50.
select abs(-25),abs(25),abs(-50),abs(50)

------------------------3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
select ceiling(25.2),ceiling(25.7),ceiling(-25.2)

------------------------4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select floor(25.2),floor(25.7),floor(-25.2)

------------------------5. Find out remainder of 5 divided 2 and 5 divided by 3.
select 5%2 as abc , 5%3 as pqr

------------------------6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
select power(3,2),power(4,3)

------------------------7. Find out the square root of 25, 30 and 50.
select sqrt(25),sqrt(30),sqrt(50)

------------------------8. Find out the square of 5, 15, and 25.
select SQUARE(5),SQUARE(15),SQUARE(25)

-----------------9. Find out the value of PI.
select pi()

-----------------10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
select round(157.732,2),round(157.732,0),round(157.732,-2)

-----------------11. Find out exponential value of 2 and 3.
select power(2,3)
-----------------12. Find out logarithm having base e of 10 and 2.
select log(10,2)

-----------------13. Find out logarithm having base b having value 10 of 5 and 100.
select log(5,100)

-----------------14. Find sine, cosine and tangent of 3.1415.
select sin(3.1415),cos(3.1415),tan(3.1415)

-----------------15. Find sign of -25, 0 and 25.
select sign(-25),sign(0),sign(25)

-----------------16. Generate random number using function.
select rand()

--------------------------------------PART-B---------------------------------
create table EMP_MASTER(
        Empno int,
		EmpName varchar(25),
		JoiningDate varchar(50),
		salary decimal,
		commission int,
		city varchar(25),
		Dept_code varchar(20)
)

insert into EMP_MASTER(Empno,EmpName,JoiningDate,salary,commission,city,Dept_code)
values(101 ,'Keyur' ,'5-1-02' ,12000.00 ,4500 ,'Rajkot' ,'3@g')
insert into EMP_MASTER(Empno,EmpName,JoiningDate,salary,commission,city,Dept_code)
values(102 ,'Hardik', '15-2-04', 14000.00 ,2500 ,'Ahmedabad', '3@')
insert into EMP_MASTER(Empno,EmpName,JoiningDate,salary,commission,city,Dept_code)
values(103 ,'Kajal', '14-3-06' ,15000.00, 3000, 'Baroda', '3-GD')
insert into EMP_MASTER(Empno,EmpName,JoiningDate,salary,commission,city,Dept_code)
values(104 ,'Bhoomi', '23-6-05', 12500.00 ,1000 ,'Ahmedabad', '1A3D')
insert into EMP_MASTER(Empno,EmpName,JoiningDate,salary,commission,city,Dept_code)
values(105 ,'Harmit', '15-2-04', 14000.00, 2000 ,'Rajkot', '312A')
select * from EMP_MASTER

-----------------------1. Display the result of Salary plus Commission.
select salary+commission from EMP_MASTER

-----------------------2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
select ceiling(55.2),ceiling(35.7),ceiling(-55.2)

-----------------------3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
select floor(55.2),floor(35.7),floor(-55.2)

-----------------------4. Find out remainder of 55 divided 2 and 55 divided by 3.
select 55%2,55%3

-----------------------5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
select power(23,2),power(14,3)

---------------------------------------------PART-C---------------------------------
-----------------1. Find out the square root of 36, 49 and 81.
select sqrt(36),sqrt(49),sqrt(81)

-----------------2. Find out the square of 3, 9, and 12.
select square(3),square(9),square(12)

-----------------3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
select round(280.8952,2),round(280.8952,0),round(280.8952,-2)

-----------------4. Find sine, cosine and tangent of 4.2014.
select sin(4.2014),cos(4.2014),tan(4.2014)

-----------------5. Find sign of -55, 0 and 95.
select sign(-55),sign(0),sign(95)

-----------------------------------------------------------STRING FUNCTION----------------------------------------
------------------------------------------PART-A-------------------------------------------
-----------------------------1. Find the length of following. (I) NULL (II) � hello � (III) Blank
select len(null),len('hello')

-----------------------------2. Display your name in lower & upper case.
select lower('radhu'),upper('radhu')

-----------------------------3. Display first three characters of your name.
select left('radhika',3)

-----------------------------4. Display 3rd to 10th character of your name.
select substring('radhika',3,10)

-----------------------------5. Write a query to convert �abc123efg� to �abcXYZefg� & �abcabcabc� to �ab5ab5ab5� using REPLACE.
select replace('abc123efg','123','XYZ'),REPLACE('abcabcabc','c','5')

-----------------------------6. Write a query to display ASCII code for �a�,�A�,�z�,�Z�, 0, 9.
select ascii('a'),ascii('A'),ascii('z'),ascii('Z'),ascii('0'),ascii('9')

-----------------------------7. Write a query to display character based on number 97, 65,122,90,48,57.


-----------------------------8. Write a query to remove spaces from left of a given string �hello world �.
select ltrim('    hello world')

-----------------------------9. Write a query to remove spaces from right of a given string � hello world �.
select rtrim('hello world    ')

-----------------------------10. Write a query to display first 4 & Last 5 characters of �SQL Server�.
select left('sql server',4),right('sql server',5)

-----------------------------11. Write a query to convert a string �1234.56� to number (Use cast and convert function).
select cast(1234.56 as int),convert(int,1234.56)

-----------------------------12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
select cast(10.58 as int),convert(int,10.58)

-----------------------------13. Put 10 space before your name using function.
select space(10) + 'radhu'

-----------------------------14. Combine two strings using + sign as well as CONCAT ().
select concat('radhu',' ','aghera'),CONCAT_WS('+','radhu','aghera')

-----------------------------15. Find reverse of �Darshan�.
select reverse('darshan')

-----------------------------16. Repeat your name 3 times.
select REPLICATE('radhu',3)

-------------------------------------PART-B---------------------------------------
---------------------------1. Find the length of FirstName and LastName columns.
select len(firstname) as first,len(lastname) as last from studen

---------------------------2. Display FirstName and LastName columns in lower & upper case.
select lower(firstname) as flower,lower(lastname) llower,upper(firstname) as fupper,upper(lastname) as lupper from studen

---------------------------3. Display first three characters of FirstName column.
select left(firstname,3) from studen 

---------------------------4. Display 3rd to 10th character of Website column.
select substring(website,3,10) from studen

---------------------------5. Write a query to display first 4 & Last 5 characters of Website column.
select left(website,4) as first,right(website,5) as last from studen

--------------------------------------------PART-C-----------------------------------------------
--------------------1. Put 10 space before FirstName using function.
select space(10) + firstname from studen

--------------------2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
select CONCAT_WS('+',firstname,lastname) from studen

--------------------3. Combine all columns using + sign as well as CONCAT ().
select CONCAT(firstname,'+',lastname) from studen

--------------------4. Find reverse of FirstName column.
select REVERSE(firstname) from studen

--------------------5. Repeat FirstName column 3 times
select REPLICATE(firstname,3) from studen

--------------------6. Give the Names which contains 5 characters.
select firstname from studen
where len(firstname) = 5;

--------------------7. Combine the result as <FirstName> Lives in <City>.
select CONCAT(firstname , ' lives in ' , city) as result from studen

--------------------8. Combine the result as Student_ID of < FirstName > is <StuID>
select concat(firstname, ' is ' ,stuid) as Student_ID from studen

---------------------------------DATE function--------------------------
--------------------------------PART-A---------------------------------
-------------------------1. Write a query to display the current date & time. Label the column Today_Date.
select getdate() as Today_Date

-------------------------2. Write a query to find new date after 365 day with reference to today.
select dateadd(day,365 ,getdate()) as New_Date

-------------------------3. Display the current date in a format that appears as may 5 1994 12:00AM.
select FORMAT(getdate(),'mmm d yyyy hh:mm:ss') as format

-------------------------4. Display the current date in a format that appears as 03 Jan 1995.
select format(getdate(),'dd mmm yyyy')

-------------------------5. Display the current date in a format that appears as Jan 04, 96.
select format(getdate(),'mmm dd, yy')

-------------------------6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
select datediff(month,'31-Dec-08','31-Mar-09')

-------------------------7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
select datediff(year,'25-Jan-12','14-Sep-10')


-------------------------8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
select datediff(hour,'25-Jan-12 7:00','26-Jan-12 10:30')

-------------------------9. Write a query to extract Day, Month, Year from given date 12-May-16.
select day('12-May-16'),month('12-May-16'),year('12-May-16')

-------------------------10. Write a query that adds 5 years to current date.


-------------------------11. Write a query to subtract 2 months from current date.


-------------------------12. Extract month from current date using datename () and datepart () function.
select datepart(month,getdate()),datename(month,getdate())

-------------------------13. Write a query to find out last date of current month.
select eomonth(getdate())

-------------------------14. Calculate your age in years and months.


--------------------------------------------------PART-B-------------------------------
CREATE TABLE EMP_DETAIL2(
EMPNO INT,
EMPNAME VARCHAR(50),
JOINING_DATE DATETIME,
SALARY INT,
CITY VARCHAR(50))


INSERT INTO EMP_DETAIL2 (EmpNo, EmpName, Joining_Date, Salary, City)
VALUES
(101, 'Keyur', '2002-01-15', 12000.00, 'Rajkot'),
(102, 'Hardik', '2004-02-15', 14000.00, 'Ahmedabad'),
(103, 'Kajal', '2006-03-14', 15000.00, 'Baroda'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 'Ahmedabad'),
(105, 'Harmit', '2004-02-15', 14000.00, 'Rajkot'),
(106, 'Jay', '2007-03-12', 12000.00,'Surat')


--1. Write a query to find new date after 365 day with reference to JoiningDate.
SELECT DATEADD(DD, 365, JOINING_DATE) AS DAY_AFTER FROM EMP_DETAIL2

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(JOINING_DATE,'MMM-dd-yyyy hh:mm') FROM EMP_DETAIL2

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
SELECT FORMAT(JOINING_DATE,'dd-MMM-yyyy') FROM EMP_DETAIL2

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
SELECT FORMAT(JOINING_DATE,'MMM dd, yy') FROM EMP_DETAIL2

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
SELECT DATEDIFF(MONTH,JOINING_DATE,'31-MAR-2009') FROM EMP_DETAIL2

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
SELECT DATEDIFF(YEAR,JOINING_DATE,'14-SEP-2010') FROM EMP_DETAIL2




-----LAB-6(C) DATE--------

--1. Write a query to extract Day, Month, Year from JoiningDate.
SELECT DAY(JOINING_DATE) AS DAY,
MONTH(JOINING_DATE) AS MONTH,
YEAR(JOINING_DATE) AS YEAR
FROM EMP_DETAIL

--2. Write a query that adds 5 years to JoiningDate.
SELECT DATEADD(yyyy,5,JOINING_DATE) FROM EMP_DETAIL2


--3. Write a query to subtract 2 months from JoiningDate.
SELECT DATEADD(MM,-2,JOINING_DATE) FROM EMP_DETAIL2

--4. Extract month from JoiningDate using datename () and datepart () function.
SELECT  DATENAME(MONTH, JOINING_DATE),
DATEPART(MONTH, JOINING_DATE)
FROM EMP_DETAIL2

--5. Calculate your age in years and months
SELECT DATEDIFF(YEAR,'2005-SEP-19',GETDATE()) AS YEAR
SELECT DATEDIFF (MONTH, '2005-SEP-19',GETDATE()) AS MONTH



