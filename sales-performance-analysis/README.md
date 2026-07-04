# Sales Performance Analysis

## Project Overview

This project analyzes a retail sales dataset using SQL to identify revenue trends, top-performing states, profitable product categories, and underperforming products.

The goal was to practice writing business-focused SQL queries and transforming raw data into actionable insights.

## Dataset

- Dataset: Superstore Sales Dataset
- Records: 9,994 sales transactions
- Database: SQLite
- Tool: DB Browser for SQLite

## Skills Demonstrated

- SQL Aggregations
- GROUP BY
- ORDER BY
- LIMIT
- Business Analysis
- Revenue Analysis
- Profitability Analysis
- Data Exploration

---

## Business Questions

### 1. What are the total sales and total profits?

```sql
SELECT
    ROUND(SUM(field10),2) AS total_sales,
    ROUND(SUM(field13),2) AS total_profit
FROM superstore;
```

**Result**

| Total Sales | Total Profit |
|------------|-------------:|
| 2,297,200.86 | 286,397.02 |

---

### 2. Which states generate the highest sales?

```sql
SELECT
    field5 AS state,
    ROUND(SUM(field10),2) AS total_sales
FROM superstore
GROUP BY field5
ORDER BY total_sales DESC
LIMIT 10;
```

**Top States by Sales**

| State | Sales |
|---------|---------:|
| California | 457,687.63 |
| New York | 310,876.27 |
| Texas | 170,188.06 |
| Washington | 138,641.27 |
| Pennsylvania | 116,611.91 |

---

### 3. Which states generate the highest profits?

```sql
SELECT
    field5 AS state,
    ROUND(SUM(field13),2) AS total_profit
FROM superstore
GROUP BY field5
ORDER BY total_profit DESC
LIMIT 10;
```

**Top States by Profit**

| State | Profit |
|---------|---------:|
| California | 76,381.39 |
| New York | 74,038.66 |
| Washington | 33,402.65 |
| Michigan | 24,463.19 |
| Virginia | 18,697.95 |

---

### 4. Which product categories generate the most sales?

```sql
SELECT
    field8 AS category,
    ROUND(SUM(field10),2) AS sales
FROM superstore
GROUP BY field8
ORDER BY sales DESC;
```

**Results**

| Category | Sales |
|-----------|---------:|
| Technology | 836,154.03 |
| Furniture | 741,999.80 |
| Office Supplies | 719,047.03 |

---

### 5. Which sub-categories generate the highest profits?

```sql
SELECT
    field9 AS sub_category,
    ROUND(SUM(field10),2) AS sales,
    ROUND(SUM(field13),2) AS profit
FROM superstore
GROUP BY field9
ORDER BY profit DESC
LIMIT 10;
```

**Top Profitable Sub-Categories**

| Sub-Category | Profit |
|--------------|---------:|
| Copiers | 55,617.82 |
| Phones | 44,615.73 |
| Accessories | 41,936.84 |
| Paper | 34,053.57 |
| Binders | 30,221.76 |

---

### 6. Which sub-categories are losing money?

```sql
SELECT
    field9 AS sub_category,
    ROUND(SUM(field13),2) AS profit
FROM superstore
GROUP BY field9
ORDER BY profit ASC
LIMIT 10;
```

**Least Profitable Sub-Categories**

| Sub-Category | Profit |
|--------------|---------:|
| Tables | -17,725.48 |
| Bookcases | -3,472.56 |
| Supplies | -1,189.10 |

---

## Key Insights

- Technology generated the highest sales revenue.
- California and New York were the strongest performing states.
- Copiers and Phones were the most profitable product groups.
- Tables and Bookcases generated losses despite strong sales activity.
- Profitability varied significantly across product categories, highlighting opportunities for pricing and inventory optimization.

---

## Business Recommendations

1. Increase investment in Technology products due to strong revenue performance.
2. Focus marketing efforts on California and New York where demand is highest.
3. Investigate pricing, discounting, and costs associated with Tables and Bookcases.
4. Expand high-margin categories such as Copiers and Phones.
5. Monitor low-profit categories to improve overall profitability.

---

## Tools Used

- SQL
- SQLite
- DB Browser for SQLite
- GitHub
