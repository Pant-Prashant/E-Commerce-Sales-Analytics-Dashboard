use ecommerce;
-- Total Revenue
select round(sum(revenue),2) as 'Total Revenue' from ec;

-- Total Number of Orders
select count(*) as 'Total Number of Orders' from ec;

-- Total Number of Unique Customers
select count( distinct customer_id) as 'Total Number of Unique Customers' from ec;

-- Average Customer Rating
select round(avg(customer_rating),2) 'Average Customer Rating' from ec;

-- Average Delivery Days
select avg(delivery_days) 'Average Delivery Days' from ec;

-- Monthly Revenue Trend
select month(order_date) as month, round(sum(revenue),2) 'Total Revenue'
from ec
group by month(order_date);

-- Revenue by Product Category
select product_category, round(sum(revenue),2)  'Total Revenue'
from ec
group by product_category;

-- Revenue by Region
select region, round(sum(revenue),2) 'Total Revenue'
from ec
group by region;

-- Revenue by Payment Method
select payment_method, round(sum(revenue),2) 'Total Revenue'
from ec
group by payment_method;

-- Top 5 Highest Paying Customers
select customer_id, round(sum(revenue),2) 'Total Revenue'
from ec group by customer_id 
order by sum(revenue) desc limit 5;

-- Top 5 Customers by Quantity Purchased
select customer_id, sum(quantity) Total_orders
from ec group by customer_id 
order by Total_orders desc limit 5;

-- Top 5 Highest Rated Customers
select *, dense_rank() over (order by avg_rating desc)
 from (select customer_id, round(avg(customer_rating),2)  avg_rating
from ec
group by customer_id) as ar
limit 5;

-- Repeat Customers
select customer_id ,count(customer_id) as count_of_customer
from ec group by customer_id
having count_of_customer >1;

-- Average Rating by Product Category
select product_category,round(avg(customer_rating),3) 'avg rating'
from ec group by product_category;

-- Orders by Product Category (%)
select product_category, orders_per_category *100/ (select count(*) from ec) '% contribution' from
(select product_category, count(*) as orders_per_category
from ec group by product_category) as t;

-- Percentage of Orders by Payment Method
select payment_method, orders_per_category *100/ (select count(*) from ec) '% contribution'
from (select payment_method, count(*) as orders_per_category
from ec group by payment_method) t;

-- Rank Regions by Revenue
select *, dense_rank() over(order by total_revenue desc) as region_rank from
(select region, round(sum(revenue),2) as total_revenue from ec group by region) t;
 
-- Monthly Revenue Growth
select month_name,
current_month_revenue ,
round((current_month_revenue - previous_month_revenue)*100/ previous_month_revenue, 2)as 'monthly revenue growth' from (select *, lag(current_month_revenue) over(order by month_no) previous_month_revenue 
from (select month(order_date) as month_no, monthname(order_date) as month_name,
round(sum(revenue)) as current_month_revenue
from ec group by month_no, month_name) t) tt



