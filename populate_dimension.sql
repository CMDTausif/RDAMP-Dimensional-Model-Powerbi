use superstore_rdamp;

-- Customers
INSERT INTO Dim_Customers (Customer_ID, City, Postal_Code, Country, Region)
SELECT DISTINCT Customer_ID, City, Postal_Code, Country, Region
FROM raw_superstore_data;

-- Products
INSERT INTO Dim_Products (Product_ID, Product_Name, Category, Sub_Category)
SELECT DISTINCT Product_ID, Product_Name, Category, Sub_Category
FROM raw_superstore_data;


-- Dates
INSERT INTO Dim_Date (Order_Date, year, month, day)
SELECT DISTINCT Order_Date, YEAR(Order_Date), MONTH(Order_Date), DAY(Order_Date)
FROM raw_superstore_data;

























































