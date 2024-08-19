-----------PART-A-------------------
 select * from Deposit

 select * from BORROW

 select * from CUSTOMERS

 select ACTNO,CNAME,AMOUNT from Deposit

 select LOANNO,AMOUNT from BORROW

 select * from BORROW where BNAME='ANDHERI'

 select * from Deposit where ACTNO=106

 select * from BORROW where AMOUNT>5000

 select * from borrow

 select * from borrow
 where loanno = 321

  select *  from borrow
 where bname = ' ANDHERI'

 select * from Deposit where ADATE > '1996-12-01'

 select * from Deposit where ACTNO < 105

 select * from CUSTOMERS where city='NAGPUR' or city='DELHI'

 select * from CUSTOMERS where city in('NAGPUR','DELHI')

 select * from Deposit where AMOUNT>4000 and ACTNO<105

 select * from BORROW where AMOUNT>=3000 and AMOUNT <=8000

 select * from BORROW where AMOUNT between 3000 and 8000

 select * from Deposit where BNAME <> 'ANDHERI'

 select * from Deposit where BNAME in ( ‘AJNI’, ‘KAROLBAGH’,‘M.G.ROAD’ ) and ACTNO<104 

 -----------PART-B------------------

 select top 5 * from Deposit

 select top 3 * from Deposit where AMOUNT>1000

 select top 5 * from BORROW where BNAME <>'ANDHERI'

 select Distinct CITY from CUSTOMERS

 select Distinct  BNAME from BRANCH 

 ------------PART-C-------------

 select top 50 percent *from BORROW

 select top 10 percent * from Deposit

 select top 25 percent * from Deposit where AMOUNT>5000


 select top 10 percent * from BORROW

 select Distinct city from CUSTOMERS

 select * ,(AMOUNT + (AMOUNT*0.1)) as increment from BORROW

 