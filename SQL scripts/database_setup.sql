-- Create the database
CREATE DATABASE IF NOT EXISTS superstore_db;
USE superstore_db;

-- Create the staging table with correct data types
CREATE TABLE IF NOT EXISTS orders (
    Category VARCHAR(255),
    City VARCHAR(255),
    Country VARCHAR(255),
    Customer_ID VARCHAR(255),
    Customer_Name VARCHAR(255),
    Discount DECIMAL(10, 4),
    Market VARCHAR(255),
    Record_Count INT,
    Order_Date VARCHAR(50), -- Initially imported as string
    Order_ID VARCHAR(255),
    Order_Priority VARCHAR(255),
    Product_ID VARCHAR(255),
    Product_Name VARCHAR(255),
    Profit DECIMAL(10, 4),
    Quantity INT,
    Region VARCHAR(255),
    Row_ID INT,
    Sales DECIMAL(10, 4),
    Segment VARCHAR(255),
    Ship_Date VARCHAR(50),
    Ship_Mode VARCHAR(255),
    Shipping_Cost DECIMAL(10, 4),
    State VARCHAR(255),
    Sub_Category VARCHAR(255),
    Year INT,
    Market2 VARCHAR(255),
    weeknum INT
);