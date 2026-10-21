# Decode Labs Internship — Project 2: Exploratory Data Analysis (EDA)

- **Intern:** Samson Oluwatimilehin Arawande
- **Role:** Data Analytics Intern
- **Internship Period:** 27 Sep 2026 – 27 Oct 2026 (Remote)
- **Tools:** Microsoft Excel (PivotTables, descriptive statistics formulas)

## Overview

This repository contains my submission for Project 2 of the Data Analytics internship at Decode Labs. Building on the cleaned dataset from Project 1, the goal was to explore the data to uncover patterns, trends, and outliers, and to be honest about how much each pattern can be trusted.

## What I did

- **Calculated basic statistics** — mean, median, and count for Quantity, UnitPrice, and TotalPrice, revealing a right-skewed order value distribution (mean about 28% above the median).
- **Identified outliers using the IQR method** — found 8 outliers (0.67% of orders) in TotalPrice, all at the maximum order quantity (5 units). Inspected each one and confirmed they were legitimate bulk orders, not data errors.
- **Tested whether the outliers cause the skew** — recalculated the mean and median without the 8 outliers; the gap barely moved (28.0% to 27.2%), so the skew comes from the whole distribution.
- **Compared products and referral channels with PivotTables** — order volume is evenly spread across products (156–181 orders) and channels (222–259 orders). Phone has the lowest order count and average order value, Laptop the highest average order value, and Facebook the highest channel average, but the gaps are small.
- **Checked whether those differences are real** — ANOVA tests, run on the raw dataset outside Excel, found no evidence that they exceed chance (p = 0.62 across products, 0.89 across channels). The rankings also change when cancelled and returned orders (41.4% of orders) are excluded.
- **Checked correlation** between Quantity and TotalPrice (r = 0.615) and Quantity and ItemsInCart (r = 0.650). Both are moderate and treated as clues, not proof of cause and effect.
- **Summarized key observations** using the "So What?" framework.

## Approach

All analysis was performed in Excel on the Orders_Clean dataset from Project 1. Descriptive statistics used AVERAGE, MEDIAN, and COUNT on a dedicated Statistics sheet. Outliers were flagged with the IQR method, then inspected individually. Trends came from PivotTables and relationships from the CORREL function. The significance checks were run on the raw dataset outside Excel. Every comparison counts all orders placed, including cancelled and returned ones.

## Files in this folder

| File | Description |
|---|---|
| `Project2_EDA_Workbook.xlsx` | Orders_Clean data plus Statistics, Pivot_Product, and Pivot_Referral sheets |
| `Project2_EDA_Report.pdf` | Full EDA report with statistics, outlier analysis, trends, significance checks, correlation, and key observations |

## Key Finding

Order value is right-skewed: the mean is about 28% above the median because of a long tail of larger orders across the whole dataset, not a few outliers. Differences between products and between referral channels are small and could be chance, so they are things to watch, not findings to act on. 41.4% of orders were cancelled or returned.
