CREATE TABLE SALES_Date(
REGION VARCHAR(50),
PRODUCT VARCHAR(50),
SALES_AMOUNT INT,
YEAR INT
)

INSERT INTO Sales_Date (Region, Product, Sales_Amount, Year)
VALUES
  ('North America', 'Watch', 1500, 2023),
  ('Europe', 'Mobile', 1200, 2023),
  ('Asia', 'Watch', 1800, 2023),
  ('North America', 'TV', 900, 2024),
  ('Europe', 'Watch', 2000, 2024),
  ('Asia', 'Mobile', 1000, 2024),
  ('North America', 'Mobile', 1600, 2023),
  ('Europe', 'TV', 1500, 2023),
  ('Asia', 'TV', 1100, 2024),
  ('North America', 'Watch', 1700, 2024);

  ---------------------PART - A--------------------------
----------1. Display Total Sales Amount by Region.
 select sum(Sales_Amount) from SALES_Date
 group by REGION

-------------------2. Display Average Sales Amount by Product
select avg(Sales_Amount) from SALES_Date
group by  Product

-------------------3. Display Maximum Sales Amount by Year
select max(Sales_Amount) from SALES_Date
group by Year

-------------------4. Display Minimum Sales Amount by Region and Year
select min(Sales_Amount) from SALES_Date
group by REGION,YEAR

-------------------5. Count of Products Sold by Region
select count(Product) from SALES_Date
group by REGION

-----------------6.Display Sales Amount by Year and Product
select sum(Sales_Amount) from SALES_Date
group by Year,Product

-------------------7. Display Regions with Total Sales Greater Than 5000
select sum(Sales_Amount) from SALES_Date
group by REGION 
having sum(Sales_Amount) > 5000

-------------------8. Display Products with Average Sales Less Than 10000
select avg(Sales_Amount) from SALES_Date
group by PRODUCT 
having sum(Sales_Amount) < 10000


-------------------9. Display Years with Maximum Sales Exceeding 500
select sum(Sales_Amount) from SALES_Date
group by Year 
having max(Sales_Amount) > 500


-------------------10. Display Regions with at Least 3 Distinct Products Sold.
select count(Product) from SALES_Date
group by REGION 
having count(distinct Product) = 3


-------------------11. Display Years with Minimum Sales Less Than 1000
select min(Sales_Amount) from SALES_Date
group by Year
having min(Sales_Amount) < 1000

-------------------12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
select sum(Sales_Amount) from SALES_Date
where year = 2023
group by REGION

-----------------------------------PART - B------------------------------
---------------1. Display Count of Orders by Year and Region, Sorted by Year and Region
select year,Region,count(Product) from SALES_Date
group by Year,region

---------------2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
select year,max(Sales_Amount) from SALES_Date
group by year
Having max(Sales_Amount)>1000
order by year asc;

---------------3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
select year,sum(Sales_Amount) from SALES_Date
group by year
Having sum(Sales_Amount)<1000
order by year desc; 

---------------4. Display Top 3 Regions by Total Sales Amount in Year 2024
select top 3 Region,sum(SALES_Amount) from SALES_Date
where year = 2024
group by region

-------------------------------PART-C------------------------------
--------------------------1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
select product,avg(SALES_Amount) from SALES_Date
where SALES_Amount between 1000 and 2000
group by product
order by product;

--------------------------2. Display Years with More Than 5 Orders from Each Region
select year, count(product) from SALES_Date
group by year
having count(product)>5

--------------------------3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
select Region,avg(SALES_Amount) from SALES_Date
where  year = 2023
group by Region
having avg(SALES_Amount)>1500
order by Region

--------------------------4. Find out region wise duplicate product.
select region,count(product) from SALES_Date
group by region

--------------------------5. Find out region wise highest sales amount
select region,max(SALES_AMOUNT) from SALES_Date
group by region
