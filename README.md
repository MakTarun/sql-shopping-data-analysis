# Customer Shopping Data Analysis

## Project Overview

This project analyzes customer shopping behavior using PostgreSQL. The objective is to identify revenue drivers, customer preferences, payment trends, demographic patterns, and shopping mall performance through SQL-based analysis.

## Dataset

The dataset contains transaction-level shopping data, including:

* Customer ID
* Gender
* Age
* Product Category
* Quantity Purchased
* Price
* Payment Method
* Invoice Date
* Shopping Mall

## SQL Concepts Used

* SELECT
* COUNT
* DISTINCT
* SUM
* AVG
* GROUP BY
* ORDER BY
* LIMIT
* EXTRACT
* TO_CHAR
* Aggregate Functions

## Business Questions Answered

1. How many unique customers made purchases?
2. Which category generated the highest revenue?
3. Which payment method was used most frequently?
4. What is the average spending amount by gender?
5. Which shopping mall generated the highest revenue?
6. How did sales revenue vary across different months?
7. Who are the top 5 customers by spending?
8. How does revenue contribution differ between genders?
9. What is the average customer age for each product category?
10. Which payment methods generated the highest revenue?

## Key Findings

* The dataset contains **99,457 unique customers**.
* Clothing generated the highest revenue, contributing **11,399,679.04** in sales.
* Cash was the most frequently used payment method with **44,447 transactions**.
* Cash also generated the highest revenue contribution of **112,832,243.02**.
* January recorded the highest monthly sales revenue of **28,891,525.59**.
* Female customers generated **150,207,136.02** in revenue, outperforming male customers.
* Mall of Istanbul generated the highest total sales revenue of **50,872,481.68**.
* Average customer age remained consistent across product categories at approximately **43 years**.

## Tools Used

* PostgreSQL
* SQL
* GitHub

## Project Structure

customer-shopping-analysis/
│
├── customer_shopping_data.csv
├── shopping_analysis.sql
├── insights.md
├── README.md
└── screenshots/

## Author

Sak_
