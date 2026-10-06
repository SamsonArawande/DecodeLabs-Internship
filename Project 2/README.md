# Decode Labs Internship — Project 2: Exploratory Data Analysis (EDA)

**Intern:** Samson Oluwatimilehin Arawande
**Role:** Data Analytics Intern
**Internship Period:** 27 Sep 2026 – 27 Oct 2026 (Remote)
**Tools:** Microsoft Excel (PivotTables, descriptive statistics formulas)

## Overview

This repository contains my submission for Project 2 of the Data Analytics internship at Decode Labs. Building on the cleaned dataset from Project 1, the goal was to explore the data to uncover patterns, trends, and outliers — turning a static table of numbers into meaningful business insight.

## What I did

- **Calculated basic statistics** — mean, median, and count for Quantity, UnitPrice, and TotalPrice, revealing a right-skewed order value distribution (mean ~28% above median).
- **Identified outliers using the IQR method** — found 8 outliers (0.67% of orders) in TotalPrice, all tied to the maximum order quantity (5 units). Inspected each one individually and confirmed they were legitimate bulk orders, not data errors.
- **Identified trends using PivotTables:**
  - By **Product** — order volume is evenly spread (156–181 orders), but Phone underperforms on both volume and average value, while Laptop drives the highest average order value.
  - By **ReferralSource** — Facebook-referred customers show the highest average order value despite moderate order volume, suggesting a higher-value customer segment.
- **Checked correlation** between Quantity and TotalPrice (r = 0.615) and Quantity and ItemsInCart (r = 0.650) — both moderate, treated as clues for further investigation rather than proof of cause and effect.
- **Summarized key observations** using the "So What?" framework — translating each statistic into an actionable business takeaway, not just a number.

## Approach

All analysis was performed in Excel directly on the Orders_Clean dataset from Project 1. Descriptive statistics were calculated using AVERAGE, MEDIAN, and COUNT formulas on a dedicated Statistics sheet. Outliers were flagged using the IQR method, then manually inspected in the dataset to distinguish genuine bulk orders (signal) from potential errors (noise). Trends were surfaced using PivotTables, and relationships between numeric variables were measured using the CORREL function.

## Files in this folder

| File | Description |
|---|---|
| `Project2_EDA_Workbook.xlsx` | Orders_Clean data plus Statistics, Pivot_Product, and Pivot_Referral sheets |
| `Project2_EDA_Report.pdf` | Full EDA report with statistics, outlier analysis, trends, correlation, and key observations |

## Key Finding

Order value is right-skewed due to a small number of legitimate bulk orders. Phone is the weakest-performing product on both order volume and value, while Facebook-referred customers represent the highest-value segment across referral channels — both actionable insights for the business.
