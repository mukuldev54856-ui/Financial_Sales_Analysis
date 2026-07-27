-- Q1. What is the total sales?
SELECT sum(sales) AS total_sales
FROM sales;

-- Q2. What is the total profit?
SELECT sum(profit) AS total_profit
FROM sales;

-- Q3. Which country generates the highest sales?
SELECT country, sum(sales) AS total_sales
FROM sales
GROUP BY Country
ORDER BY total_sales desc;

-- Q4. Which customer segment generates the highest sales?
SELECT Segment, sum(sales) AS total_sales
FROM sales
GROUP BY Segment
ORDER BY total_sales DESC;

-- Q5. Which product generates the highest sales?
SELECT Product, sum(sales) AS total_sales
FROM sales
GROUP BY Product
ORDER BY total_sales DESC;

-- Q6. Which month has the highest sales?
SELECT `Month Name`,
       SUM(Sales) AS Total_Sales
FROM sales
GROUP BY `Month Name`
ORDER BY Total_Sales DESC;

-- Q7. Which year generated the highest sales?
SELECT Year,
       SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Year
ORDER BY Total_Sales DESC;

-- Q8. What is the average profit by country?
SELECT Country,
	   AVG(Profit) AS Avg_profit
FROM sales
GROUP BY Country
ORDER BY Avg_profit DESC;

-- Q9. Top 10 highest sales transactions
SELECT Country,
       Product,
       Segment,
       Sales
FROM sales
ORDER BY Sales DESC
LIMIT 10;

-- Q10. Which Discount Band generates the highest sales?
SELECT `Discount Band`,
       SUM(Sales) AS Total_Sales
FROM sales
GROUP BY `Discount Band`
ORDER BY Total_Sales DESC;

-- Profit Margin.
SELECT
ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM sales;

-- Top 5 Most Profitable Products.
SELECT Product,
       SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Product
ORDER BY Total_Profit DESC
LIMIT 5;

-- Average Sales by Segment.
SELECT Segment,
       ROUND(AVG(Sales),2) AS Average_Sales
FROM sales
GROUP BY Segment
ORDER BY Average_Sales DESC;