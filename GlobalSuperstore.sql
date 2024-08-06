-- Total Products
select count(distinct(product_id)) as Total_Products from global_superstore;

-- Total Customer
select count(distinct(customer_id)) as Total_Customers from global_superstore;

-- Total Sales
select sum(sales) as Total_Sales from global_superstore;

-- Net Profit Margin
select (SUM(Profit) / SUM(sales)) * 100 as Net_Profit_Margin from global_superstore;

-- Average Discount
select avg(discount) as Average_Discount from global_superstore;

-- Product Performance
select category, sum(profit) as profit, sum(sales) as sales from global_superstore
group by category;

-- Sales by Subcategory
select sum(sales) as Sales, sub_category from global_superstore
group by sub_category
order by Sales ASC;

-- Top 5 Country By Profit Gain
-- ERROR
SELECT TOP 5 country, sum(profit)
FROM global_superstore
group by country
order by profit DESC;

SELECT TOP 5 country, sum(profit) as TotalProfit
FROM global_superstore
group by country
order by TotalProfit DESC;

-- Sales By Ship_mode
select ship_mode, sum(sales) as sales from global_superstore
group by ship_mode
order by sales Desc;

-- Sales by Month and Year
-- ERROR
select year(ship_date) as Yearr, month(ship_date) as Monthh, sum(sales) from global_superstore
group by Yearr, Monthh;

select year(ship_date) as Yearr, month(ship_date) as Monthh, sum(sales) as sales from global_superstore
group by year(ship_date), month(ship_date);
