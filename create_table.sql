use superstore_rdamp;

-- Customers
CREATE TABLE Dim_Customers (
    Customer_ID VARCHAR(20) PRIMARY KEY,
    City VARCHAR(100),
    Postal_Code VARCHAR(20),
    Country VARCHAR(100),
    Region VARCHAR(50)
);

-- Products
CREATE TABLE Dim_Products (
    Product_ID VARCHAR(20) PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50)
);


-- Dates
CREATE TABLE Dim_Date (
    Date_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_Date DATE,
    year INT,
    month INT,
    day INT
);

-- Fact Table
CREATE TABLE Fact_Sales (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Order_Date DATE,
    Customer_ID VARCHAR(20),
    Product_ID VARCHAR(20),
    Sales DECIMAL(10,2),
    Cost_Price DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Total_sales DECIMAL(10,2),
    Discount_Amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Dim_Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Dim_Products(product_id)
);












































