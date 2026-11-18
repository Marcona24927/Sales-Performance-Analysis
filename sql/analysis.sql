-- PostgreSQL | Table: sales | Revenue is net of discount
SELECT order_id, order_date, region, sales_rep, product, category,
       units_sold * unit_price * (1 - discount_pct) AS net_revenue
FROM sales;
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(units_sold * unit_price * (1-discount_pct)) AS net_revenue,
       SUM(units_sold) AS units, COUNT(*) AS orders
FROM sales GROUP BY 1 ORDER BY 1;
SELECT region, SUM(units_sold*unit_price*(1-discount_pct)) AS revenue
FROM sales GROUP BY region ORDER BY revenue DESC;
SELECT category, SUM(units_sold*unit_price*(1-discount_pct)) AS revenue
FROM sales GROUP BY category ORDER BY revenue DESC;
SELECT sales_rep, COUNT(*) AS orders,
       SUM(units_sold*unit_price*(1-discount_pct)) AS revenue
FROM sales GROUP BY sales_rep ORDER BY revenue DESC;
SELECT COUNT(*) AS rows, COUNT(DISTINCT order_id) AS unique_orders,
       COUNT(*) FILTER (WHERE units_sold<=0 OR unit_price<0 OR discount_pct NOT BETWEEN 0 AND 1) AS invalid_rows
FROM sales;