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
- **Grouped and aggregated with GROUP BY** — used `COUNT`, `AVG`, and `SUM` to summarize orders and revenue by product and by referral source.
- **Filtered groups with HAVING** — kept only products with more than 170 orders.
- **Calculated revenue share** — used a subquery to express each product's revenue as a percentage of the total.
- **Cross-validated against Excel** — SQL reproduced the Project 2 results: 173 Laptop orders, 8 outliers above the IQR cutoff, and the product and referral PivotTable figures.

## Approach

All 13 queries were run one at a time in DB Browser for SQLite against the Orders_Clean table. Each query is commented in the SQL file with its purpose and result, and the PDF report documents the setup, key queries, results, and cross-checks.

## Files in this folder

| File | Description |
|---|---|
| `Project3_SQL_Queries.sql` | All 13 queries with plain-English comments and results |
| `Project3_SQL_Report.pdf` | Full report: setup, query log, key results, cross-validation, and findings |

## Key Finding

Laptop has the highest average order value, but it ranks third in total revenue because Chair and Printer receive more orders. Chair and Printer are effectively tied for the top spot (a gap of just 7.50), while Phone is last on every measure.
