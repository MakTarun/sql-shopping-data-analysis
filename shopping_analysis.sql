





CREATE TABLE shopping(
    invoice_no VARCHAR(25),
	customer_id VARCHAR(25), 
	gender VARCHAR(25),
	age INT,
	category VARCHAR(25),	
	quantity INT,
	price NUMERIC,
	payment_method VARCHAR(25),
	invoice_date DATE,
	shopping_mall VARCHAR(25)

);

-- Retrieve all records from the shopping dataset
SELECT * FROM shopping

-- How many unique customers made purchases?
SELECT COUNT(DISTINCT CUSTOMER_id) From Shopping

-- Which product category generated the highest revenue?
Select Category,SUM(price*quantity) AS total_sales  FROM shopping GROUP BY Category ORDER BY total_sales DESC LIMIT 1;

-- Which payment method was used most frequently by customers?
Select  payment_method, COUNT(*) as  transactions From shopping GROUP BY payment_method ORDER BY transactions DESC;

-- What is the average spending amount by gender?
Select gender, COUNT(customer_id) AS total_customers,AVG(Price*quantity) AS avg_spending FROM Shopping Group BY gender;

-- Which shopping mall generated the highest total revenue?
Select  shopping_mall,SUM(PRICE*quantity) as total_sales FROM shopping GROUP BY shopping_mall ORDER BY total_sales DESC LIMIT 1 ;

-- How did sales revenue vary across different months?
SELECT TO_CHAR(INVOICE_DATE, 'Mon') AS month , SUM( price * quantity) AS total_sales FROM shopping GROUP BY TO_CHAR(INVOICE_DATE , 'Mon'), EXTRACT(MONTH FROM INVOICE_DATE)
ORDER BY EXTRACT(MONTH FROM INVOICE_DATE) ;

-- Who are the top 5 customers based on total spending?
Select customer_id,  SUM(price*quantity) as spending_by_customer From shopping GROUP BY customer_id  Order by spending_by_customer DESC LIMIT 5;

-- How does revenue contribution differ between genders?
SELECT gender,SUM( price*quantity) as revenue_gender_wise From shopping GROUP BY gender ;

-- What is the average customer age for each product category?
SELECT category,AVG(age) as Average_age FROM Shopping GROUP BY category ;

-- Which payment methods generated the highest revenue?
Select payment_method ,SUM( price*quantity) as revenue  From shopping GROUP BY payment_method Order by revenue DESC ;
