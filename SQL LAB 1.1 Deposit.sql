create database CSE_3B_379
create table Deposit(
     ACTNO int,
	 CNAME VARCHAR(50),
	 BNAME VARCHAR(50),
	 AMOUNT decimal(8,2),
	 ADATE datetime
)
insert into Deposit(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
Values(101,'ANIL','VRCE',1000.00,2019-03-01)

insert into Deposit(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
Values(102,'SUNIL','AJNI',5000.00,1996-01-04)

insert into Deposit(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
Values(103,'MEHUL','KEROLBAGH',3500.00,1995-11-17)

insert into Deposit(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
Values(104,'MADHURI','CHANDI',1200.00,1995-12-17)

insert into Deposit(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
Values(105 ,'PRAMOD',' M.G. ROAD', 3000.00, 27-3-96)

insert into Deposit(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
Values(106, 'SANDIP',' ANDHERI', 2000.00, 31-3-96)

insert into Deposit(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
Values(107 ,'SHIVANI ','VIRAR ',1000.00 ,5-9-95)

insert into Deposit(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
Values(108 ,'KRANTI ','NEHRU PLACE ',5000.00 ,2-7-95)

insert into Deposit(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
Values(109 ,'MINU', 'POWAI ',7000.00 ,10-8-95)
