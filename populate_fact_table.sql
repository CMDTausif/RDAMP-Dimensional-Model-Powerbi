use superstore_rdamp;

INSERT INTO Fact_Sales (
    Order_ID, Order_Date, Customer_ID, Product_ID,
    Sales, Cost_Price, Quantity, Discount,
    Total_Sales, Discount_Amount
)
SELECT
    Order_ID,
    Order_Date,
    Customer_ID,
    Product_ID,
    Sales,
    Cost_Price,
    Quantity,
    Discount,
    Sales * Quantity AS Total_Sales,
    Sales * Discount AS Discount_Amount
FROM raw_superstore_data;




























