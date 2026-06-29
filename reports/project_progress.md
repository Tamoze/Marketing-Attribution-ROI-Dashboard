# Project Progress Documentation
# Marketing Attribution ROI Dashboard

## Week 1
### 1.1 Project Setup
a. Repository Initialization
Created GitHub repository: Marketing-Attribution-ROI-Dashboard
Set up branching strategy:
main → production-ready branch
temitope-agboola → development branch

b Initial Project Structure Created
Marketing-Attribution-ROI-Dashboard/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   └── 01_data_exploration.ipynb
│
├── reports/
├── images/
└── README.md

### 1.2 Project Charter Creation

A full project charter was created and stored in:

reports/Project_Charter.md
It includes:
Project overview
Business problem definition
Objectives
Scope (in-scope & out-of-scope)
Deliverables
Success criteria
Tools & technologies
Project timeline (4 weeks)

### 1.3 Dataset Integration
Dataset Source:
Kaggle: Marketing & E-Commerce Analytics Dataset
Files loaded into project:
data/raw/
├── campaigns.csv
├── customers.csv
├── events.csv
├── products.csv
└── transactions.csv

### 1.4 Notebook Setup
Created:
notebooks/01_data_exploration.ipynb
Environment setup:
Python 3.11 virtual environment (.venv)
Installed and configured:
pandas
numpy
ipykernel (fixed notebook execution issue)

### 1.5 Data Loading & Validation
Successfully loaded datasets:
Dataset	Shape
campaigns	(50, 7)
customers	(100,000, 7)
events	(2,000,000, 12)
products	(2,000, 6)
transactions	(103,127, 9)

### 1.6 Data Quality Assessment
i.  Missing Values
campaigns
No missing values
customers
No missing values
events
product_id: 200,371 missing
device_type: 40,300 missing
products
No missing values
transactions
product_id: 10,449 missing
gross_revenue: 10,449 missing
ii.  Duplicate Check

All datasets:

campaigns: 0 duplicates
customers: 0 duplicates
events: 0 duplicates
products: 0 duplicates
transactions: 0 duplicates

### 1.7 Key Observations So Far
7.1 Strong Data Quality Foundation
No duplicates across all datasets
Core tables are structurally sound
7.2 Expected Data Gaps
Event-level product tracking is partial (normal for clickstream data)
Some transaction revenue values are missing (likely incomplete or failed transactions)

### 1.8 Data Architecture Identified
Marketing Funnel Structure:
Campaigns → Events → Transactions → Revenue
                 ↓
              Customers
                 ↓
              Products
Key Join Keys:
campaign_id
customer_id
product_id

### 1.9 Current Project Status
Completed:
Repository setup
Project charter
Dataset integration
Notebook setup
Data loading
Data quality assessment (missing values + duplicates)
Initial data structure analysis

### Summary

At this stage, the project has successfully completed:

Data Engineering + Initial Data Validation Phase

## Dataset Overview
Campaigns: 50 rows × 7 columns
Customers: 100,000 rows × 7 columns
Events: 2,000,000 rows × 12 columns
Products: 2,000 rows × 6 columns
Transactions: 103,127 rows × 9 columns

## Key Data Quality Summary
Duplicates:
- campaigns: 0
- customers: 0
- events: 0
- products: 0
- transactions: 0

Missing Values:
- events.product_id
- events.device_type
- transactions.product_id
- transactions.gross_revenue

The dataset is generally clean with no duplicate records across all tables. Missing values are concentrated in behavioral event and transaction linkage fields, which is expected in real-world marketing attribution data due to incomplete tracking and optional event logging.

## Week 2

## Stage 1. Data Cleaning Assessment

### 2.1 Overview

A comprehensive data quality assessment was conducted across all datasets to evaluate completeness, consistency, and structural integrity prior to analysis.

### 2.2 Duplicate Records Check

All datasets (campaigns, customers, events, products, transactions) were evaluated for duplicate records. No duplicates were found across any tables, indicating strong data integrity at the record level.

### 2.3 Missing Value Analysis

#### campaigns

No missing values were identified, indicating complete campaign tracking data.

#### customers

No missing values were observed, confirming complete customer demographic and segmentation data.

#### products

No missing values were found, indicating a fully structured product catalog.

#### events

Missing values were observed in:

* product_id (200,371 missing values)
* device_type (40,300 missing values)

These missing values are expected in behavioral datasets due to:

* non-product-related user interactions (e.g., browsing, landing page visits)
* incomplete device tracking or session-level logging gaps

#### transactions

Missing values were observed in:

* product_id (10,449 missing values)
* gross_revenue (10,449 missing values)

These gaps may indicate:

* failed or incomplete transactions
* refunded or aborted purchases
* logging or system capture issues during transaction processing

### 2.4 Interpretation

The dataset is structurally clean with no duplicates and strong relational consistency. However, partial missing values exist in behavioral and transactional tables, which is typical in real-world marketing systems.

Rather than treating these as errors, they are interpreted as meaningful signals of:

* customer journey complexity
* incomplete tracking coverage
* transactional anomalies

### 2.5 Cleaning Strategy

Instead of blanket removal or imputation, a contextual approach will be used:

* Missing product_id in events will be retained where event_type does not require product association
* Missing device_type will be categorized as "Unknown"
* Missing transaction revenue rows will be flagged for separate analysis or exclusion from ROI calculations depending on analytical context

This ensures analytical accuracy while preserving real-world behavioral patterns.

## 2.5 Project Progress Update

### Completed Activities

#### Stage 2: Data Cleaning and Preparation

* Conducted comprehensive data profiling across all five datasets.
* Assessed dataset dimensions, missing values, data types, and duplicate records.
* Identified missing values in the Events and Transactions datasets.
* Developed a structured data cleaning strategy to address data quality issues.
* Implemented data cleaning procedures, including:

  * Handling missing values.
  * Standardizing date fields to datetime format.
  * Creating transaction quality classifications.
  * Standardizing data types across datasets.
* Validated cleaned datasets to ensure analytical readiness.

### Key Findings

* No duplicate records were identified across any dataset.
* Events dataset missing values were successfully addressed.
* Transactions dataset contains 10,449 incomplete records, which were flagged for future analysis.
* 92,678 transactions were classified as valid and suitable for attribution and ROI analysis.

### Current Status

* Stage 1: Data Exploration — Completed
* Stage 2: Data Cleaning and Preparation — Completed
* Stage 3: Attribution Analysis and KPI Development — Ready to Begin

### Week 3

# Stage 3: Customer Journey Analysis & KPI Development (Completed)

## Activities Completed
- Customer journey analysis performed
- Conversion tracking defined
- Key KPIs computed:
  - Total Customers
  - Converting Customers
  - Conversion Rate
  - Total Touchpoints
- Traffic source distribution analyzed

## Outcome
A clear understanding of customer behavior and baseline marketing performance metrics was established.

---

# Stage 4A: KPI Development & Attribution Foundation (Completed)

## Activities Completed
- Multi-touch attribution concepts introduced
- First-touch and last-touch logic explored
- Linear attribution concept developed
- Initial comparison of attribution models performed

## Outcome
A foundational understanding of attribution modeling was established for advanced SQL implementation.

---

# Stage 4B: SQL Attribution & Performance Modeling (Completed)

## Activities Completed

### SQL Data Integration
- Joined `events`, `customers`, and `campaigns` tables
- Built unified customer journey dataset

### SQL Window Functions
- `ROW_NUMBER()` used for sequencing customer journeys
- `COUNT()` used to calculate total touchpoints

### Attribution Modeling
- Linear attribution weights calculated in SQL
- First-touch and last-touch models derived in Python

### Channel Performance Analysis
- Attribution performance by traffic source analyzed
- Engagement distribution across channels evaluated

### Campaign Performance Analysis
- Campaign channel effectiveness evaluated
- Campaign objectives analyzed across customer journey stages

## Outcome
A fully structured SQL-based analytical dataset was created, enabling multi-touch attribution analysis and marketing performance evaluation.

---

# Key Achievements Across Stages 3–4

- Built complete customer journey dataset
- Implemented multi-touch attribution modeling
- Applied SQL JOINs and Window Functions
- Developed channel performance insights
- Analyzed campaign effectiveness
- Created BI-ready dataset for dashboard development

---

# Overall Project Status

| Stage | Status |
|------|--------|
| Stage 1 – Project Setup | Completed |
| Stage 2 – Data Cleaning | Completed |
| Stage 3 – KPI Development | Completed |
| Stage 4A – Attribution Foundation | Completed |
| Stage 4B – SQL Attribution Modeling | Completed |

---

# Next Stage

## Stage 5: Power BI Dashboard Development

Focus areas:
- Dashboard design and layout
- KPI visualization
- Attribution comparison charts
- Funnel analysis
- Channel performance dashboards
- Campaign performance dashboards