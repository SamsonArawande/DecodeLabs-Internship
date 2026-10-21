# Decode Labs Internship — Project 4: Data Visualization (Optional Mastery Project)

- **Intern:** Samson Oluwatimilehin Arawande
- **Role:** Data Analytics Intern
- **Internship Period:** 27 Sep 2026 – 27 Oct 2026 (Remote)
- **Tools:** Power BI Desktop (DAX measures, calculated column)

## Overview

This folder contains my submission for Project 4, the optional data visualization project at Decode Labs. Using the same cleaned order dataset from Projects 1 to 3, I built a five-page Power BI report where each page makes one point and states its conclusion in the title, following the kit's principles: choose the chart from the question, keep axes honest, remove clutter, and always answer "So what?".

## What I did

- **Summary page** — a one-page overview of the key findings and next steps.
- **Order status (bar chart)** — 41% of orders (497 of 1,200) were cancelled or returned; the dataset does not record why.
- **Product mix (bar chart)** — total order value is spread evenly across products (12% to 15.5% each); Phone is the smallest, but the ranking changes by order status.
- **Referral channels (clustered bar chart)** — compared average order value with and without cancelled and returned orders. The highest channel switches from Facebook to Google, and a statistical test found no evidence the gaps are more than chance.
- **Quarterly trend (line chart)** — order value has drifted down since 2023, but the evidence is borderline.
- **Wrote DAX** — two measures (average order value for all orders, and excluding cancelled and returned orders) and a Quarter calculated column.

## Design principles applied

Bar charts start at zero, with no 3D or smoothing. Data labels replace legends and gridlines. Grey is used for context, with one orange accent as a spotlight. Every title states the conclusion, and every page ends with a "So what?" and a source footnote. Where a finding was uncertain, the page says so instead of overclaiming.

## Files in this folder

| File | Description |
|---|---|
| `Project4_Dashboard.pbix` | The Power BI report file |
| `DecodeLabs_Project_4.pdf` | The five-page report exported to PDF |

## Notes

"Total order value" means TotalPrice summed over every order placed, including cancelled and returned orders; it is not realized revenue. The statistical tests quoted in the report (ANOVA across channels, trend lines across quarters and months) were run on the raw dataset outside Power BI. The dataset does not state a currency, so values are plain numbers.

## Key Finding

Four in ten orders were cancelled or returned, and the data does not say why. The patterns by product, channel and time are small or borderline, so they should not drive decisions on their own.
