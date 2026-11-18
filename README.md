# Sales Performance Analysis

## Project overview
This intermediate portfolio project explores operational data using SQL, Excel and Power BI. The included CSV is a small **synthetic practice dataset** created for this portfolio; it does not represent a real organisation or real people.

## Business questions
- How does net revenue change over time?
- Which regions, products and representatives contribute most to revenue?
- How do discounts relate to sales outcomes?

## Tools
- SQL for data exploration, aggregation and KPI calculations
- Excel for data validation, pivot tables and quick summaries
- Power BI for interactive dashboard development

## Repository structure
- `data/` — synthetic CSV dataset
- `sql/` — reusable analysis queries
- `docs/` — dashboard build guide and suggested visuals

## How to use
1. Download the CSV in `data/`.
2. Import it into your SQL database and create a table using the CSV column names.
3. Run the queries in `sql/analysis.sql` (the date-truncation syntax is PostgreSQL-style; adapt it for your SQL platform if needed).
4. Open the CSV in Excel to check data types, inspect records and build pivot tables.
5. Load the CSV into Power BI and follow `docs/dashboard-guide.md`.
6. Validate dashboard totals against SQL before publishing screenshots or a `.pbix` file.

## Portfolio note
The dataset is intentionally small and synthetic so the analysis can be reproduced. Add your own documented findings, screenshots and dashboard file after completing the analysis. Do not claim that synthetic results are real-world business outcomes.

## Author
Constance Martins