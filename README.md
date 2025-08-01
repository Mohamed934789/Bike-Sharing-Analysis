# 🚴‍♂️ Bike Sharing Analysis

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)


## 🗂️ Project Summary
This project performs **Exploratory Data Analysis (EDA)** on a Bike Sharing dataset using **SQL** for data preparation and **Power BI** for visualization.  
The main goal was to practice combining SQL queries with interactive dashboards to generate actionable insights.

> ⚠️ **Note:** This is a **Learning Project** created by following a tutorial and implementing it from scratch while customizing the design and colors. The goal was to strengthen my SQL and data visualization skills.

## 🎯 Objectives
- Learn how to combine SQL queries with Power BI for data analysis.
- Build an interactive dashboard to visualize revenue, profit, and rider demographics.
- Understand seasonal and hourly sales trends.

## 📂 Dataset Description
The dataset contains:
- **Bike rentals data** for two years.
- **Cost tables** for calculating revenue and profit.
- Fields include: `date`, `season`, `weekday`, `hour`, `rider_type`, `riders`, `price`, `COGS`.

## 🛠️ SQL Query Used
```sql
WITH cte AS (
    SELECT * FROM bike_share_yr_0
    UNION 
    SELECT * FROM bike_share_yr_1
)
SELECT 
    dteday,
    season,
    a.yr,
    weekday,
    hr,
    rider_type,
    riders,
    price,
    COGS,
    riders*price AS Revenue,
    riders*price - COGS AS Profit 
FROM cte a
LEFT JOIN cost_table c
ON a.yr = c.yr;

## 📊 Key Insights
Midday and early evening hours (10–15 hrs) are the most profitable.  
Wednesday and Friday show higher sales, indicating variable profitability during the week.  
Season 3 (Summer) generated the highest revenue overall.

## 📸 Sample Dashboard

## 🚀 Tech Stack
- **SQL:** PostgreSQL  
- **Visualization:** Power BI  
- **Data Preparation:** SQL Queries  
- **Dashboard:** Revenue, Profit Margin, Rider Demographics, Seasonal Trends

## 👤 Author
**M. Kassab**  
📧 Email: [m.kassab934@gmail.com](mailto:m.kassab934@gmail.com)  
💼 LinkedIn: [Mohamed Kassab](https://www.linkedin.com/in/mohamed-kassab-b1b0482a1/)
