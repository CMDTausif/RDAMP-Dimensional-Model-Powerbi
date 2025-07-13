# RDAMP-Dimensional-Model-Powerbi

## Project Title
**Dimensional Modeling, SQL Transformation & Power BI Reporting for Ace Superstore**

---

## Overview

This project was developed for the RDAMP program, transforming a cleaned retail dataset into a dimensional model (star schema), building reusable SQL views, and developing an interactive Power BI dashboard.

The goal was to optimize data for enterprise-level reporting and enable insightful business decision-making.

---

## Tech Stack
- MySQL Workbench (SQL schema + views)
- Power BI Desktop
- GitHub

---

## Schema Diagram

<img width="1024" height="1024" alt="Image" src="https://github.com/user-attachments/assets/2bb6f664-c095-40a9-a2a2-d5bf6dcdd86c" />


---

## Schema Structure

### 🔹 Fact Table
- **Fact_Sales**: Contains measurable business metrics like `sales`, `cost_price`, `quantity`, `discount`, `order_date`, etc.

### 🔹 Dimension Tables
- **Products**: product_id, product_name, category, sub_category
- **Customers**: customer_id, city, region, country, postal_code
- **Date**: order_date, year, month, day, weekday
- **OrderMode**: order_mode_id, order_mode

---

## SQL Scripts

- `create_tables.sql` – Creates fact and dimension tables
- `populate_dimensions.sql` – Fills all dimension tables from raw data
- `populate_fact_table.sql` – Fills the fact table with transformed transactional data
- `create_views.sql` – Builds views used directly in Power BI
- `queries.sql` – 5 reusable queries for business analysis (e.g., top products, sales trends, discount patterns)

---

## 📊 Power BI Dashboard

### Dashboard Views:
1. **Total Sales by Region and Category**
2. **Top 5 Products by Profit**
3. **Monthly Sales Trend**
4. **Sales Distribution by Region (Pie Chart)**

Screenshots:

> ![dashboard](https://github.com/user-attachments/assets/9a0fe78b-525e-48bc-9068-caf500bbd8f5)


---

##  Sample Queries (from `queries.sql`)

```sql
-- Top 5 products by profit
SELECT p.product_name, SUM((f.sales - f.cost_price) * f.quantity) AS total_profit
FROM Fact_Sales f
JOIN Dim_Products p ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC
LIMIT 5;































































































































































































































