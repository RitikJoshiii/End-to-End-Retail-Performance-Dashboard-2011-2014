USE superstore_db;

-- Analysis 1: Total Profit by Category (Matches your Tableau Sheet 1)
SELECT Category, ROUND(SUM(Profit), 2) as Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Analysis 2: Monthly Sales Growth (Matches your Tableau Sheet 2)
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month, 
    SUM(Sales) AS Monthly_Sales
FROM orders
GROUP BY Month
ORDER BY Month;

-- Analysis 3: Identify Top 5 High-Spending Customers
SELECT Customer_Name, SUM(Sales) as Total_Spent
FROM orders
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 5;
