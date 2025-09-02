-- Data Analysis 
-- 1. Trends 
SELECT
YEAR(order_date) as order_year, 
SUM(sales_amount) as total_sales,
COUNT(DISTINCT customer_key) AS total_customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL 
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date)

SELECT
MONTH(order_date) as order_month,
SUM(sales_amount) as total_sales,
COUNT(DISTINCT customer_key) AS total_customers,
SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL 
GROUP BY MONTH(order_date)
ORDER BY MONTH(order_date)


-- 2.Cumulative Analysis 
-- Calculate the total sales per month and the running total of sales over time 
SELECT 
order_date, 
total_sales, 
SUM(total_sales) OVER (PARTITION BY order_date ORDER BY order_date) AS runnning_total_sales
FROM (
	SELECT 
	DATETRUNC(month, order_date) AS order_date, 
	SUM(sales_amount) AS total_sales 
	FROM gold.fact_sales
	WHERE order_date IS NOT NULL
	GROUP BY DATETRUNC(month, order_date)
)t

-- 3. Performance Analysis 



-- 4.  Part to Whole 

-- 5. Data Segmentation

-- 6. Reporting 
