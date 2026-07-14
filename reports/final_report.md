# Marketing Attribution ROI Dashboard

**Project Type:** Data Analytics & Business Intelligence Project

**Tools Used:** Python, Pandas, NumPy, Jupyter Notebook, Power BI, Git, GitHub

**Dataset:** Marketing & E-Commerce Analytics Dataset (Kaggle)

**Project Duration:** 4 Weeks

## Table of Contents

1. Project Overview
2. Business Problem
3. Project Objectives
4. Dataset Description
5. Methodology
6. Data Cleaning
7. Exploratory Data Analysis
8. Data Preparation & Feature Engineering
9. Data Modeling
10. KPI Development
11. Power BI Dashboard Development
12. Attribution Analysis
13. Business Insights
14. Recommendations
15. Challenges Encountered
16. Conclusion

---

# 1. Project Overview

The Marketing Attribution ROI Dashboard project was developed to help business stakeholders understand how different marketing channels contribute to customer conversions and revenue generation. Organizations invest significant marketing budgets across multiple channels, yet determining which channels drive the highest business value remains a major challenge.

This project combines data engineering, exploratory data analysis, business intelligence, and interactive dashboard development to evaluate marketing effectiveness using attribution analysis.

---

# 2. Business Problem

Modern businesses invest in several digital marketing channels including:

- Email Marketing
- Paid Search
- Social Media
- Display Advertising
- Affiliate Marketing
- Direct Traffic

Without attribution analysis, organizations struggle to answer critical business questions:

- Which marketing channels generate the highest revenue?
- Which campaigns deliver the highest ROI?
- Which marketing channels influence customer conversions?
- How should marketing budgets be allocated?

The objective of this project was to answer these questions through data analytics.

---

# 3. Project Objectives

The project objectives were:

- Explore and understand customer journey data.
- Clean and prepare marketing datasets.
- Analyze campaign and channel performance.
- Develop business KPIs.
- Build an executive Power BI dashboard.
- Compare multiple marketing attribution models.
- Generate actionable business insights.

---

# 4. Dataset Description

The project utilized the Marketing & E-Commerce Analytics Dataset containing approximately:

| Dataset | Description |
|----------|-------------|
| campaigns.csv | Marketing campaign information |
| customers.csv | Customer demographic information |
| events.csv | Customer marketing touchpoints |
| products.csv | Product information |
| transactions.csv | Customer purchase transactions |

The dataset contains over two million customer interaction records across multiple marketing channels.

---

# 5. Project Workflow

The project followed a structured analytics workflow:

Business Understanding

↓

Data Collection

↓

Data Cleaning

↓

Exploratory Data Analysis

↓

Feature Engineering

↓

Dimensional Data Modeling

↓

Power BI Dashboard Development

↓

Business Insights & Recommendations

---

# 6. Data Cleaning

The data cleaning stage included:

- Missing value detection
- Duplicate record validation
- Data type corrections
- Date formatting
- Revenue validation
- Customer ID validation
- Campaign ID consistency checks
- Feature creation

New analytical fields included:

- Marketing Spend
- Campaign Duration
- Conversion Flag
- Customer Journey Metrics

---

# 7. Exploratory Data Analysis

EDA focused on understanding:

Customer Behaviour

- Customer volume
- Customer purchases
- Purchase frequency

Campaign Performance

- Campaign duration
- Campaign spend
- Revenue generation

Marketing Channels

- Revenue by channel
- Spend by channel
- Conversion performance

Customer Journey

- Marketing touchpoints
- Conversion paths
- Attribution patterns

---

# 8. Feature Engineering

Additional analytical features were developed:

Campaign KPIs

- Campaign Revenue
- Campaign Spend
- Campaign ROI
- Campaign ROAS

Customer KPIs

- Conversion Flag
- Customer Lifetime Metrics

Business Metrics

- Cost per Conversion
- Conversion Rate
- Marketing ROI

---

# 9. Data Modeling

A dimensional model was designed using a Star Schema.

Dimension Tables

- DimCustomer
- DimCampaign
- DimCampaignSpend
- DimProduct

Fact Tables

- FactTransactions
- FactCustomerJourney

This structure supports efficient business intelligence reporting and analytical performance.

---

# 10. Power BI Development

An executive dashboard was created featuring:

Executive KPIs

- Total Revenue
- Marketing Spend
- ROAS
- ROI
- Customers Reached
- Customers Converted
- Transactions
- Conversion Rate
- Cost per Conversion

Interactive Visuals

- Revenue by Channel
- Marketing Spend by Channel
- Campaign Performance Analysis
- Customer Conversion Funnel
- Attribution Analysis

Interactive Filters

- Marketing Attribution Model
- Campaign
- Channel

---

# 11. Attribution Analysis

Three attribution models were implemented.

## First-Touch Attribution

Assigns 100% of conversion value to the customer's first marketing interaction.

Business Use

Useful for evaluating awareness campaigns.

---

## Last-Touch Attribution

Assigns 100% of conversion value to the final customer interaction before conversion.

Business Use

Useful for evaluating conversion-focused campaigns.

---

## Linear Attribution

Distributes revenue equally across every customer touchpoint.

Business Use

Provides balanced measurement of channel contribution.

---

# 12. Key Performance Indicators

The dashboard measures:

Revenue

Total business revenue generated.

Marketing Spend

Total campaign investment.

Return on Ad Spend (ROAS)

Revenue generated per marketing dollar spent.

Return on Investment (ROI)

Profitability of marketing activities.

Conversion Rate

Percentage of customers converting.

Cost per Conversion

Average marketing cost required to generate one conversion.

---

# 13. Executive Insights

The analysis revealed several important findings.

- Email Marketing generated the highest revenue contribution.
- Paid Search accounted for the largest marketing investment.
- Marketing generated approximately $12.47 in revenue for every $1 invested.
- Overall ROI exceeded 1,100%.
- Over 64,000 customers completed at least one purchase.
- More than 103,000 transactions were recorded.
- Attribution analysis showed varying channel performance depending on the attribution model selected.

---

# 14. Business Recommendations

Based on the analysis:

Increase investment in Email Marketing due to its strong revenue contribution.

Review Paid Search spending to optimize campaign efficiency.

Use multiple attribution models rather than relying solely on Last-Touch attribution.

Monitor Cost per Conversion regularly.

Allocate marketing budgets based on ROAS and ROI performance.

Use interactive dashboards for continuous campaign monitoring.

---

# 15. Technical Skills Demonstrated

Python

- Data Cleaning
- Data Transformation
- Feature Engineering

Pandas

- Data Manipulation
- Data Aggregation

Power BI

- Data Modeling
- DAX
- Dashboard Design
- Interactive Reporting

Git & GitHub

- Version Control
- Branch Management
- Project Collaboration

Business Intelligence

- KPI Development
- Executive Reporting
- Marketing Analytics
- Attribution Analysis

---

# 16. Challenges Encountered

During the project several technical challenges were addressed.

- Large datasets exceeding GitHub file size limits.
- Relationship optimization in Power BI.
- Star Schema implementation.
- Campaign spend integration.
- DAX measure validation.
- Funnel optimization.
- Attribution model implementation.
- Dashboard performance tuning.

---

# 17. Project Outcome

The project successfully delivered:

- Clean analytical datasets.
- Dimensional data model.
- Executive Power BI Dashboard.
- Interactive attribution model comparison.
- Business-ready KPI reporting.
- Executive business insights.
- Portfolio-quality Business Intelligence solution.

---

# 18. Lessons Learned

This project strengthened practical experience in:

- Marketing Analytics
- Customer Journey Analysis
- Attribution Modeling
- Business Intelligence
- Dashboard Design
- Data Storytelling
- Business Decision Support
- End-to-End Data Analytics Workflow

---

# 19. Conclusion

The Marketing Attribution ROI Dashboard successfully transformed raw marketing and customer interaction data into meaningful business insights. By integrating Python for data preparation, Power BI for visualization, and attribution modeling for advanced marketing analysis, the project provides decision-makers with a comprehensive platform for evaluating campaign performance, optimizing marketing investments, and supporting strategic business decisions through data-driven insights.