\# Multi-Touch Marketing Attribution \& Synthetic ROI Dashboard



\## Project Objective



The objective of this project was to analyze customer journeys and marketing performance using event, transaction, customer, product, and campaign data.



The project focused on preparing attribution models and building a Power BI dashboard to show revenue contribution, funnel performance, customer/product segments, and ROI-style metrics.



\## Datasets Used



The project used the following datasets:



\- events.csv

\- transactions.csv

\- customers.csv

\- products.csv

\- campaigns.csv



The raw data files were kept locally and were not pushed to GitHub because the events dataset was large.



\## Work Completed



\### Data Validation and Cleaning



The datasets were loaded and validated using Python/Pandas. I checked dataset shapes, missing values, timestamp fields, campaign IDs, traffic sources, and refund flags.



\### Attribution Modeling



Customer touchpoints were connected to valid purchase transactions using a 30-day lookback window.



Three attribution models were prepared:



1\. First-touch attribution

2\. Last-touch attribution

3\. Linear attribution



The attribution outputs were prepared by channel and campaign.



\### Metric Calculation



Dashboard-ready output files were created, including:



\- summary metrics

\- revenue by channel

\- revenue by product category

\- revenue by loyalty tier

\- funnel summary

\- attribution by channel

\- attribution by campaign



\### Synthetic Ad Spend and ROI Metrics



The original dataset did not include real ad spend, cost, budget, CPC, or CPM data.



To support dashboard demonstration, synthetic ad spend data was created. Based on this synthetic spend data, the following simulated metrics were calculated:



\- Spend

\- Impressions

\- Clicks

\- CTR

\- CPC

\- CPM

\- ROAS

\- CAC

\- Cost per conversion



These ROI metrics are for demonstration only and should not be treated as actual business financial results.



\## Power BI Dashboard



The completed Power BI dashboard includes the following pages:



1\. Executive Overview

2\. Attribution Comparison

3\. Funnel Analysis

4\. Customer/Product Segments

5\. Synthetic ROI Analysis

6\. Methodology and Data Limitations



\## Key Limitation



Real ad spend data was not available in the original datasets. Therefore, ROAS, CAC, CPC, CPM, and cost-per-conversion values are based on synthetic ad spend data created for dashboard demonstration.



\## Final Outcome



By the end of the project, the full workflow was completed from data validation to attribution modeling, metric calculation, synthetic ROI preparation, and Power BI dashboard reporting.

