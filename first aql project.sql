-- sql retail sales analysis - p1
create database sql_project_p1;
-- create the table 
create table retail_sales_tb
(
transactions_id	INT PRIMARY KEY,
sale_date date,
sale_time	time,
customer_id	int,
gender varchar(50),
age int,
category varchar(50),
quantity int,
price_per_unit float,
cogs float,
total_sale float
);


-- DATA CLEANING 
SELECT * 
FROM retail_sales_tb 
LIMIT 100;

select count(*) 
from retail_sales_tb;

SELECT * FROM retail_sales_tb 
where transactions_id is null
	  or sale_date is null 
	  or sale_time is null
	  or customer_id is null
	  or gender is null
	  or age is null
	  or category is null
	  or quantity is null
	  or total_sale is null
	  or cogs is null
	  or  price_per_unit is null;


--deleting null data
delete from retail_sales_tb
where transactions_id is null
 	  or sale_date is null 
	  or sale_time is null
	  or customer_id is null
	  or gender is null
	  or age is null
	  or category is null
	  or quantity is null
	  or total_sale is null
	  or cogs is null
	  or price_per_unit is null;

-- DATA EXPLORATION
-- how many sales we have 
select count(*) as sales_number 
from retail_sales_tb;
 
--retrieve all columns for sales made on '2022-11-05:
select * 
from retail_sales_tb
where sale_date = '2022-11-05';

-- retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
select * 
		from retail_sales_tb
		where category = 'Clothing'
		  and quantity > 4
		  and TO_CHAR(sale_date, 'YYYY-MM') = '2022-11' ;

		  
--calculate the total sales (total_sale) for each category.:
SELECT category,
       sum(total_sale) as total_sales
FROM retail_sales_tb
group by category;


--find the average age of customers who purchased items from the 'Beauty' category:
select round(avg(age),2) as avg_age
FROM retail_sales_tb
where category = 'Beauty';


--find all transactions where the total_sale is greater than 1000:
select * 
FROM retail_sales_tb
where total_sale > 1000
order by total_sale;


--find the total number of transactions (transaction_id) made by each gender in each category:
select count(transactions_id) as num , 
	   gender , 
	   category
FROM retail_sales_tb
group by gender, category 


--calculate the average sale for each month. Find out best selling month in each year:
select * 
from (
select AVG(total_sale) as avg_sale,
	   extract(year from sale_date) as year,
	   extract(month from sale_date) as month,
	   rank() over( partition by extract(year from sale_date) order by avg(total_sale) desc) as ranking
from retail_sales_tb
group by year , month) as t1
where ranking =1 ;

--find the top 5 customers based on the highest total sales
select customer_id, 
       sum(total_sale) as top_5_highest_total_sales 
from retail_sales_tb
group by customer_id
order by top_5_highest_total_sales desc
limit 5;

 
--find the number of unique customers who purchased items from each category.
select category, 
       count (distinct customer_id ) as unique_cus
from retail_sales_tb
group by 1;


--query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):

select 
	  case when extract(hour from sale_time) < 12 then 'morning'
 	   	   when extract(hour from sale_time) between 12 and 17 then 'afternoon'
	       else 'evening'
      end as shift, 
      count(*) as num
from retail_sales_tb
group by shift;