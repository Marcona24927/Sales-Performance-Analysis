-- PostgreSQL | Sales Performance Analysis
-- Import data/sales_data.csv and trim the leading space from the sales_rep header during import.
WITH sales_kpis AS (
 SELECT *, units_sold * unit_price * (1-discount_pct) AS net_revenue FROM sales
)
SELECT SUM(net_revenue) AS net_revenue, SUM(units_sold) AS units_sold,
       COUNT(*) AS orders, AVG(net_revenue) AS average_order_value FROM sales_kpis;
SELECT DATE_TRUNC('month',order_date) AS month,
       SUM(units_sold*unit_price*(1-discount_pct)) AS net_revenue
FROM sales GROUP BY 1 ORDER BY 1;
SELECT region, SUM(units_sold*unit_price*(1-discount_pct)) AS revenue
FROM sales GROUP BY region ORDER BY revenue DESC;
SELECT category, SUM(units_sold*unit_price*(1-discount_pct)) AS revenue
FROM sales GROUP BY category ORDER BY revenue DESC;
SELECT sales_rep, SUM(units_sold*unit_price*(1-discount_pct)) AS revenue
FROM sales GROUP BY sales_rep ORDER BY revenue DESC;
SELECT COUNT(*) AS rows, COUNT(DISTINCT order_id) AS unique_orders,
 COUNT(*) FILTER (WHERE units_sold<=0 OR unit_price<0 OR discount_pct NOT BETWEEN 0 AND 1) AS invalid_rows FROM sales;