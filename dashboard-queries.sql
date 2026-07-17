-- Dashboard Queries for Retail Organization Dashboard
-- Data Source: databricks_simulated_retail_customer_data.v01.sales

-- =====================================================
-- Query 1: Sales Goal Comparison
-- Purpose: Calculate total sales and compare against goal
-- =====================================================
SELECT 
    sum(total_price) AS Total_Sales, 
    3000000 AS Sales_Goal 
FROM databricks_simulated_retail_customer_data.v01.sales;

-- =====================================================
-- Query 2: Three Month Sales Analysis
-- Purpose: Track sales by month for Aug-Oct 2019
-- =====================================================
SELECT 
    customer_name, 
    total_price AS Total_Sales, 
    date_format(order_date, "MM") AS Month, 
    product_category 
FROM databricks_simulated_retail_customer_data.v01.sales 
WHERE order_date >= to_date('2019-08-01')
    AND order_date <= to_date('2019-10-31');

-- =====================================================
-- Query 3: Product Category Analysis
-- Purpose: Calculate average sales by product category
-- =====================================================
SELECT 
    product_category,
    AVG(total_price) AS avg_sales,
    MIN(total_price) AS min_sales,
    MAX(total_price) AS max_sales,
    COUNT(*) AS num_transactions
FROM databricks_simulated_retail_customer_data.v01.sales
GROUP BY product_category
ORDER BY avg_sales DESC;

-- =====================================================
-- Query 4: Daily Sales Trend
-- Purpose: Track total sales by day
-- =====================================================
SELECT 
    DATE_TRUNC('DAY', order_date) AS order_day,
    SUM(total_price) AS daily_total_sales,
    COUNT(*) AS num_orders
FROM databricks_simulated_retail_customer_data.v01.sales
GROUP BY DATE_TRUNC('DAY', order_date)
ORDER BY order_day;

-- =====================================================
-- Additional Useful Queries
-- =====================================================

-- Top Customers by Total Spend
SELECT 
    customer_name,
    COUNT(*) AS num_orders,
    SUM(total_price) AS total_spent,
    AVG(total_price) AS avg_order_value
FROM databricks_simulated_retail_customer_data.v01.sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- Product Category Performance Summary
SELECT 
    product_category,
    COUNT(DISTINCT customer_name) AS unique_customers,
    COUNT(*) AS total_orders,
    SUM(total_price) AS total_revenue,
    AVG(total_price) AS avg_order_value
FROM databricks_simulated_retail_customer_data.v01.sales
GROUP BY product_category
ORDER BY total_revenue DESC;