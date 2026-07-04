-- =====================================
-- Dataset Preview
-- =====================================

SELECT *
FROM superstore
LIMIT 10;


-- =====================================
-- Total Sales and Profit
-- =====================================

SELECT
    ROUND(SUM(field10), 2) AS total_sales,
    ROUND(SUM(field13), 2) AS total_profit
FROM superstore;


-- =====================================
-- Top 10 States by Sales
-- =====================================

SELECT
    field5 AS state,
    ROUND(SUM(field10), 2) AS total_sales
FROM superstore
GROUP BY field5
ORDER BY total_sales DESC
LIMIT 10;


-- =====================================
-- Top 10 States by Profit
-- =====================================

SELECT
    field5 AS state,
    ROUND(SUM(field13), 2) AS total_profit
FROM superstore
GROUP BY field5
ORDER BY total_profit DESC
LIMIT 10;


-- =====================================
-- Sales by Category
-- =====================================

SELECT
    field8 AS category,
    ROUND(SUM(field10), 2) AS sales
FROM superstore
GROUP BY field8
ORDER BY sales DESC;


-- =====================================
-- Most Profitable Sub-Categories
-- =====================================

SELECT
    field9 AS sub_category,
    ROUND(SUM(field10), 2) AS sales,
    ROUND(SUM(field13), 2) AS profit
FROM superstore
GROUP BY field9
ORDER BY profit DESC
LIMIT 10;


-- =====================================
-- Least Profitable Sub-Categories
-- =====================================

SELECT
    field9 AS sub_category,
    ROUND(SUM(field13), 2) AS profit
FROM superstore
GROUP BY field9
ORDER BY profit ASC
LIMIT 10;
