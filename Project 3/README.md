# Decode Labs Internship — Project 3: SQL Data Analysis

- **Intern:** Samson Oluwatimilehin Arawande
- **Role:** Data Analytics Intern
- **Internship Period:** 27 Sep 2026 – 27 Oct 2026 (Remote)
- **Tools:** SQL (SQLite), DB Browser for SQLite

## Overview

This folder contains my submission for Project 3 of the Data Analytics internship at Decode Labs. Starting with no prior SQL experience, I used SQL to query the cleaned order dataset from Projects 1 and 2 and extract business insights, then checked the results against my earlier Excel analysis.

## What I did

- **Built the database** — exported the cleaned Orders_Clean sheet to CSV, imported it into a SQLite database, and verified the import with `COUNT(*)` (1,200 rows, matching Project 1).
- **Wrote SELECT queries** — previewed data, selected specific columns, and limited results.
- **Filtered and sorted with WHERE and ORDER BY** — including numeric filters and combined conditions with `AND`.
- **Grouped and aggregated with GROUP BY** — used `COUNT`, `AVG`, and `SUM` to summarize orders and total order value by product and by referral source.
- **Filtered groups with HAVING** — kept only products with more than 170 orders.
- **Calculated each product's share of total order value** — used a subquery to divide each product's total by the grand total.
- **Tested how the results change when Cancelled and Returned orders are excluded** — 41.4% of orders fall in those two statuses, and several product rankings change without them (`WHERE ... NOT IN`).
- **Cross-validated against Excel** — SQL reproduced the Project 2 results: 173 Laptop orders, 8 outliers above the IQR cutoff, and the product and referral PivotTable figures.

## Approach

All 14 queries were run one at a time in DB Browser for SQLite against the Orders_Clean table. "Total order value" means TotalPrice summed over every order placed, including Cancelled and Returned orders, so it is not realized revenue. Each query is commented in the SQL file, and the PDF report documents the setup, key queries, results, and cross-checks.

## Files in this folder

| File | Description |
|---|---|
| `Project3_SQL_Queries.sql` | All 14 queries with plain-English comments and results |
| `Project3_SQL_Report.pdf` | Full report: setup, query log, key results, order-status comparison, cross-validation, and findings |

## Key Finding

41.4% of orders were Cancelled or Returned, and that changes the picture. Counting every order placed, Laptop has the highest average order value but ranks third in total order value, and Chair and Printer are effectively tied for first. Excluding Cancelled and Returned orders, Printer ranks first, Chair has the highest average order value, and Laptop's lead disappears. Only one conclusion holds either way: Phone has the smallest total order value.
