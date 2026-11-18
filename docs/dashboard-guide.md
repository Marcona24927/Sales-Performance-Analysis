## Suggested Power BI dashboard

**KPI cards:** Net Revenue, Units Sold, Order Count, Average Order Value, Average Discount.

**Visuals:**
- Line chart: monthly net revenue trend.
- Clustered bar: revenue by region.
- Bar chart: revenue by product and category.
- Column chart: revenue by sales representative.
- Scatter chart: discount percentage versus net revenue.

**Slicers:** order date, region, category, sales representative.

**Core measure:** Net Revenue = SUMX(sales, sales[units_sold] * sales[unit_price] * (1 - sales[discount_pct])).

Validate totals against the SQL outputs before publishing. Use the supplied CSV as the source; do not present this synthetic sample as actual company performance.