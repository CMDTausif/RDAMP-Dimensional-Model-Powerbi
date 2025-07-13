use superstore_rdamp;

-- 1. Top 5 Profitable Products
SELECT 
p.Product_Name, 
SUM((f.Sales - f.Cost_Price) * f.Quantity) AS Total_Profit
FROM Fact_Sales f
JOIN Dim_Products p ON f.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Profit DESC
LIMIT 5;

-- 2. Region-wise Sales

SELECT 
    c.Region, 
    SUM(f.Sales) AS Total_Sales
FROM Fact_Sales f
JOIN Dim_Customers c ON f.Customer_ID = c.Customer_ID
GROUP BY c.Region;

-- 3. Discount Vs Profit 
SELECT 
    Discount, 
    AVG((Sales - Cost_Price) * Quantity) AS Avg_Profit
FROM Fact_Sales
GROUP BY Discount;

-- 4. Yearly Sales 

SELECT 
    YEAR(Order_Date) AS year, 
    SUM(Sales) AS Total_Sales
FROM Fact_Sales
GROUP BY year;

-- 5. Quantity vs Average Profit

SELECT 
    Quantity, 
    AVG((Sales - Cost_Price) * Quantity) AS Avg_Profit
FROM Fact_Sales
GROUP BY Quantity;


































































































































































































