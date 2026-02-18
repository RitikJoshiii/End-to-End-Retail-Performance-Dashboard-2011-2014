USE superstore_db;

-- 1. Standardize the Date columns (Convert text to real SQL dates)
UPDATE orders SET 
    Order_Date = STR_TO_DATE(LEFT(Order_Date, 10), '%Y-%m-%d'),
    Ship_Date = STR_TO_DATE(LEFT(Ship_Date, 10), '%Y-%m-%d');

-- 2. Clean up white spaces in names
UPDATE orders SET 
    Customer_Name = TRIM(Customer_Name), 
    Product_Name = TRIM(Product_Name),
    City = TRIM(City);

-- 3. Delete any header rows that might have been imported by mistake
DELETE FROM orders WHERE Category = 'Category';