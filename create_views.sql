use superstore_rdamp;


CREATE VIEW v_sales_summary AS
SELECT 
    c.Region,
    p.Category,
    SUM(f.Sales) AS Total_Sales
FROM Fact_Sales f
JOIN Dim_Customers c ON f.Customer_ID = c.Customer_ID
JOIN Dim_Products p ON f.Product_ID = p.Product_ID
GROUP BY c.Region, p.Category;

CREATE VIEW v_monthly_trend AS
SELECT 
    d.year,
    d.month,
    SUM(f.Sales) AS monthly_sales
FROM Fact_Sales f
JOIN Dim_Date d ON f.Order_Date = d.Order_Date
GROUP BY d.year, d.month;







































