# retail-sales-analysis
SQL project analyzing retail sales data using PostgreSQL, focusing on data cleaning, exploratory analysis, customer behavior, and sales trends.

# SQL Retail Sales Analysis

A beginner-to-intermediate SQL project exploring retail sales data with PostgreSQL-compatible syntax. The project uses data cleaning, exploratory analysis, and business-focused queries to turn transaction records into useful insights.

## Table of Contents

- [Project Objectives](https://workik.com/readme-generator#project-objectives)
- [Features](https://workik.com/readme-generator#features)
- [Technologies Used](https://workik.com/readme-generator#technologies-used)
- [Dataset Description](https://workik.com/readme-generator#dataset-description)
- [Data Cleaning](https://workik.com/readme-generator#data-cleaning)
- [Business Questions Answered](https://workik.com/readme-generator#business-questions-answered)
- [SQL Concepts Demonstrated](https://workik.com/readme-generator#sql-concepts-demonstrated)
- [How to Run the Project](https://workik.com/readme-generator#how-to-run-the-project)
- [Results and Insights](https://workik.com/readme-generator#results-and-insights)
- [Testing](https://workik.com/readme-generator#testing)
- [Contributing](https://workik.com/readme-generator#contributing)
- [License](https://workik.com/readme-generator#license)
- [Author](https://workik.com/readme-generator#author)

## Project Objectives

- Inspect the retail dataset and remove records with missing values.
- Analyze sales trends across dates, months, and years.
- Explore customer behavior by age, gender, and purchasing activity.
- Evaluate sales and customer activity across product categories.

## Features

- Checks the dataset’s record count and identifies incomplete records.
- Analyzes transaction totals, category sales, and monthly performance.
- Compares customer and transaction activity across categories and shifts.
- Ranks top customers and best-performing months.

## Technologies Used

- **SQL**
- **PostgreSQL-compatible syntax**

## Dataset Description

The dataset is stored in the `retail_sales_tb` table.
## Dataset Description

The dataset is stored in the `retail_sales_tb` table.

--------------------------------------------------------------
| Column            | Description                            |
--------------------------------------------------------------
| `transactions_id` | Unique identifier for each transaction |
| `sale_date`       | Date of the sale                       |
| `sale_time`       | Time of the sale                       |
| `customer_id`     | Customer identifier                    |
| `gender`          | Customer gender                        |
| `age`             | Customer age                           |
| `category`        | Product category                       |
| `quantity`        | Number of units purchased              |
| `price_per_unit`  | Price per unit                         |
| `cogs`            | Cost of goods sold                     |
| `total_sale`      | Total transaction sales amount         |
--------------------------------------------------------------

## Data Cleaning

The cleaning process:

1. Inspects sample records from the table.
2. Counts the total number of records.
3. Checks for `NULL` values across the dataset’s columns.
4. Removes records that have a missing value in any of those columns.

## Business Questions Answered

The SQL analysis answers the following questions:

1. How many sales transactions are recorded?
2. Which transactions were recorded on November 5, 2022?
3. Which clothing transactions had a quantity greater than four during November 2022?
4. What are the total sales for each product category?
5. What is the average age of customers who purchased beauty products?
6. Which transactions had sales greater than 1,000?
7. How many transactions were made by each gender in each product category?
8. What was the average transaction value for each month, and which month performed best in each year?
9. Who are the top five customers by total sales?
10. How many unique customers purchased items in each category?
11. How many transactions occurred during the morning, afternoon, and evening shifts?

## SQL Concepts Demonstrated

- Aggregate functions, including `COUNT`, `SUM`, and `AVG`
- Filtering and sorting
- Grouping and distinct counts
- `NULL` handling
- Date and time functions, including `TO_CHAR` and `EXTRACT`
- Conditional logic with `CASE WHEN`
- Subqueries
- Window functions, including `RANK()`
- `LIMIT`

## How to Run the Project

1. Install and start PostgreSQL.
2. Create a database named `sql_project_p1`.
3. Connect to the database and create the `retail_sales_tb` table using the project’s table definition.
4. Import the dataset into `retail_sales_tb` using a PostgreSQL client or database import tool. Ensure the data columns match the table schema.
5. Run the SQL script in order: table setup, data cleaning, then analysis queries.




## Author

**Farah Adil** is a Data Science student interested in SQL, data analysis, and extracting insights from data.
