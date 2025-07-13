create database superstore_rdamp;
use superstore_rdamp;

create table raw_superstore_data (
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Order_Mode VARCHAR(50),
    Customer_ID VARCHAR(20),
    City VARCHAR(100),
    Postal_Code VARCHAR(20),
    Country VARCHAR(100),
    Region VARCHAR(50),
    Product_ID VARCHAR(20),
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Sales DECIMAL(10,2),
    Cost_Price DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2)
);

SELECT COUNT(*) FROM raw_superstore_data;







