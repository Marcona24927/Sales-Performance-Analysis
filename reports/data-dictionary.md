# Sales data dictionary

| Field | Meaning | Type |
|---|---|---|
| order_id | Unique order key | Text |
| order_date | Order date | Date |
| region | Sales territory | Category |
| sales_rep | Fictional representative | Category |
| product | Product name | Category |
| category | Product grouping | Category |
| units_sold | Quantity sold | Integer |
| unit_price | Illustrative unit price | Decimal |
| discount_pct | Discount fraction from 0 to 1 | Decimal |

Net revenue = units_sold × unit_price × (1 − discount_pct).