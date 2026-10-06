# Decode Labs Internship — Project 1: Data Cleaning & Preparation

**Intern:** Samson Oluwatimilehin Arawande
**Role:** Data Analytics Intern
**Internship Period:** 27 Sep 2026 – 27 Oct 2026 (Remote)
**Tools:** Microsoft Excel, Power Query

## Overview

This repository contains my submission for Project 1 of the Data Analytics internship at Decode Labs. The goal was to clean a raw, 1,200-row order dataset by identifying missing values, removing duplicates, and correcting inconsistent formats — turning raw data into a reliable source of truth.

## What I did

- **Identified and resolved missing values** — filled 309 blank `CouponCode` entries with an explicit `"No Coupon"` label instead of leaving them ambiguous.
- **Removed duplicates** — validated `OrderID` as the dataset's primary key (1,200 total rows, 1,200 distinct IDs, 0 duplicates), then separately confirmed 0 full-row duplicates across all 14 columns.
- **Corrected formats:**
  - Rounded `UnitPrice` and `TotalPrice` to 2 decimal places, removing floating-point rounding noise.
  - Converted `Date` from Date/Time to Date-only and standardized display to ISO 8601 (`YYYY-MM-DD`).
  - Trimmed and cleaned all text columns (`Product`, `ShippingAddress`, `PaymentMethod`, `OrderStatus`, `CouponCode`, `ReferralSource`) to guard against stray whitespace or formatting inconsistencies.
- **Documented every change** in a formal PDF change log, including a verification gate matching the project's 0% error threshold on unique identifiers and date formats.

## Approach

All transformations were built in Power Query with named, ordered Applied Steps for full reproducibility. A separate reference query (`Orders_Validation`) was used to run duplicate and primary-key checks without altering the cleaned dataset, and an untouched raw copy (`Orders_Raw`) was preserved throughout for audit purposes.

## Files in this repo

| File | Description |
|---|---|
| `Project1_Cleaned_Dataset.xlsx` | Cleaned dataset with Orders_Clean, Orders_Validation queries, and Orders_Raw backup |
| `Project1_Change_Log.pdf` | Full change log with methodology, verification results, and reflections |

## Result

0% error rate on unique identifiers, 0% error rate on date formats — verification gate passed.
