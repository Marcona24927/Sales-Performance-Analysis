/* Sales Performance Analysis - PostgreSQL / SQL Server compatible with minor date syntax changes */
-- 1. Revenue after discount
SELECT order_id, order_date, region, sales_rep, product, category,
       units_sold * unit_price * (1 - discount_pct) AS net_revenue
FROM sales;

-- 2. Monthly revenue and units
SELECT DATE_TRUNC('month', order_date) AS sales_month,
       SUM(units_sold * unit_price * (1 - discount_pct)) AS revenue,
       SUM(units_sold) AS units
FROM sales
GROUP BY 1 ORDER BY 1;

-- 3. Revenue by region
SELECT region, SUM(units_sold * unit_price * (1 - discount_pct)) AS revenue
FROM sales GROUP BY region ORDER BY revenue DESC;

-- 4. Product/category performance
SELECT category, product, SUM(units_sold) AS units,
       SUM(units_sold * unit_price * (1 - discount_pct)) AS revenue
FROM sales GROUP BY category, product ORDER BY revenue DESC;

-- 5. Sales representative performance
SELECT sales_rep, COUNT(*) AS orders,
       SUM(units_sold * unit_price * (1 - discount_pct)) AS revenue
FROM sales GROUP BY sales_rep ORDER BY revenue DESC;

-- 6. Discount impact (compare average discount and revenue)
SELECT discount_pct, COUNT(*) AS orders,
       SUM(units_sold * unit_price * (1 - discount_pct)) AS net_revenue
FROM sales GROUP BY discount_pct ORDER BY discount_pct;