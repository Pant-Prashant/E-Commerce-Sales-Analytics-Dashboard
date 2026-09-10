# 🛒 E-Commerce Sales Analytics Dashboard

## 📌 Project Overview

This project is an **E-Commerce Sales Analytics** project that uses
**MySQL** to analyze sales, customers, orders, product categories,
regions, payment methods, ratings, and monthly revenue performance.

The SQL analysis produces business-focused KPIs and supporting datasets
that are presented through an **E-Commerce Sales Analytics Dashboard**.

The project demonstrates how SQL can be used to transform raw
transactional data into actionable business insights and dashboard-ready
metrics.

------------------------------------------------------------------------

## 🎯 Project Objectives

The main objectives of this project are to:

-   Measure overall revenue and order performance.
-   Understand customer behavior and identify repeat customers.
-   Analyze revenue across product categories and regions.
-   Examine payment-method usage.
-   Track monthly revenue trends and growth.
-   Identify high-value and high-quantity customers.
-   Analyze customer ratings by product category.
-   Rank regions based on revenue.
-   Calculate the contribution of product categories and payment methods
    to total orders.
-   Present important business metrics through an interactive-style
    dashboard.

------------------------------------------------------------------------

## 📊 Dashboard Overview

The dashboard provides a high-level view of e-commerce performance.

### Key Performance Indicators

  KPI                                 Value
  ----------------------------- -----------
  **Total Revenue**               **5.11M**
  **Total Orders**                **5,000**
  **Average Delivery Days**        **6.12**
  **Average Customer Rating**      **2.97**

### Dashboard Visualizations

The dashboard includes:

1.  **Monthly Revenue Trend**
    -   Tracks revenue performance from January through December.
    -   Helps identify high- and low-performing months.
2.  **Revenue by Product Category**
    -   Electronics: **1.83M**
    -   Clothing: **1.53M**
    -   Home: **0.98M**
    -   Beauty: **0.77M**
3.  **Revenue by Region**
    -   West: **1.35M**
    -   North: **1.28M**
    -   South: **1.25M**
    -   East: **1.24M**
4.  **Payment Method Distribution**
    -   Card: **45.40%**
    -   COD: **35.48%**
    -   Wallet: **19.12%**

------------------------------------------------------------------------

## 🗄️ Database & SQL Analysis

The project uses a MySQL database named `ecommerce` and analyzes the
`ec` table.

The SQL queries calculate the following metrics and analyses:

### Overall Business KPIs

-   Total revenue
-   Total number of orders
-   Total number of unique customers
-   Average customer rating
-   Average delivery days

### Sales Analysis

-   Monthly revenue trend
-   Revenue by product category
-   Revenue by region
-   Revenue by payment method
-   Monthly revenue growth

### Customer Analysis

-   Top 5 highest-paying customers
-   Top 5 customers by quantity purchased
-   Top 5 highest-rated customers
-   Identification of repeat customers

### Product & Customer Satisfaction Analysis

-   Average customer rating by product category
-   Percentage contribution of orders by product category

### Payment & Regional Analysis

-   Percentage contribution of orders by payment method
-   Regional revenue ranking using `DENSE_RANK()`

The SQL queries use aggregation functions such as `SUM()`, `COUNT()`,
and `AVG()`, along with `GROUP BY`, `HAVING`, `ORDER BY`, subqueries,
and the window functions `LAG()` and `DENSE_RANK()`. These techniques
are directly reflected in the provided SQL analysis.

------------------------------------------------------------------------

## 🔍 Key Business Insights

Based on the dashboard:

### 1. Electronics is the Leading Revenue Category

**Electronics generated approximately 1.83M**, making it the
highest-revenue product category in the dashboard.

Clothing follows with approximately **1.53M**.

### 2. Revenue Is Relatively Balanced Across Regions

The four regions have relatively close revenue figures:

-   West --- 1.35M
-   North --- 1.28M
-   South --- 1.25M
-   East --- 1.24M

The **West region** is the highest-performing region by revenue.

### 3. Card Is the Most Used Payment Method

Card payments account for approximately **45.40%** of the payment-method
distribution shown on the dashboard.

COD represents **35.48%**, while Wallet accounts for **19.12%**.

### 4. Customer Ratings Indicate an Opportunity for Improvement

The dashboard reports an **average customer rating of 2.97**, suggesting
that customer satisfaction could be an important area for further
investigation.

Potential follow-up analysis could examine ratings by product category,
region, delivery time, or payment method.

### 5. Delivery Performance

The average delivery time is **6.12 days**.

Further analysis could investigate whether longer delivery times are
associated with lower customer ratings.

------------------------------------------------------------------------

## 🧮 SQL Concepts Demonstrated

This project demonstrates several important SQL skills:

### Aggregation

``` sql
SUM()
COUNT()
AVG()
```

Used to calculate revenue, orders, customers, and ratings.

### Grouping

``` sql
GROUP BY
```

Used to analyze metrics by:

-   Product category
-   Region
-   Payment method
-   Customer
-   Month

### Filtering Groups

``` sql
HAVING
```

Used to identify repeat customers.

### Sorting & Limiting

``` sql
ORDER BY
LIMIT
```

Used to identify top-performing customers.

### Subqueries

Subqueries are used to calculate percentage contributions and
intermediate aggregated results.

### Window Functions

``` sql
DENSE_RANK()
LAG()
```

`DENSE_RANK()` is used for regional revenue ranking, while `LAG()` is
used to compare current-month revenue with the previous month for
monthly revenue growth.

------------------------------------------------------------------------

## 🛠️ Tools & Technologies

-   **MySQL** --- database querying and analysis
-   **SQL** --- data extraction, transformation, aggregation, and
    analysis
-   **Dashboard / Data Visualization** --- presentation of KPIs and
    analytical results

------------------------------------------------------------------------

## 📁 Project Structure

``` text
E-Commerce-Sales-Analytics/
│
├── ecommerce mysql queries.sql
├── dashboard photo.png
└── README.md
```

------------------------------------------------------------------------

## ▶️ How to Run the SQL Project

### 1. Create / Select the Database

``` sql
USE ecommerce;
```

### 2. Make Sure the Data Table Exists

The SQL queries expect a table named:

``` text
ec
```

with fields including:

``` text
revenue
customer_id
customer_rating
delivery_days
order_date
product_category
region
payment_method
quantity
```

### 3. Execute the SQL File

Open the SQL file in a MySQL client such as:

-   MySQL Workbench
-   phpMyAdmin
-   DBeaver
-   VS Code with a MySQL extension

Run the queries sequentially to reproduce the analysis.

------------------------------------------------------------------------

## 💼 Data Analyst Skills Demonstrated

This project showcases practical skills relevant to a **Data Analyst**
role:

-   SQL querying
-   Data aggregation
-   KPI calculation
-   Customer analysis
-   Sales analysis
-   Business performance analysis
-   Window functions
-   Subqueries
-   Data visualization
-   Dashboard interpretation
-   Business insight generation

------------------------------------------------------------------------

## 👤 Author

**Prashant Pant**

B.Tech --- Computer Science & Engineering, 2026

This project is part of a data analytics portfolio demonstrating
SQL-based business analysis and dashboard development.

------------------------------------------------------------------------

## ⭐ Project Summary

**E-Commerce Sales Analytics** converts transactional e-commerce data
into meaningful business metrics covering **revenue, orders, customers,
product categories, regions, payments, ratings, and delivery
performance**.

The project combines **MySQL analysis with dashboard visualization** to
demonstrate an end-to-end approach to answering common business
questions using data.
