# Project Progress Documentation
# Marketing Attribution ROI Dashboard

## Week 1
### 1. Project Setup
1.1 Repository Initialization
Created GitHub repository: Marketing-Attribution-ROI-Dashboard
Set up branching strategy:
main → production-ready branch
temitope-agboola → development branch

1.2 Initial Project Structure Created
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

### 2. Project Charter Creation

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

### 3. Dataset Integration
Dataset Source:
Kaggle: Marketing & E-Commerce Analytics Dataset
Files loaded into project:
data/raw/
├── campaigns.csv
├── customers.csv
├── events.csv
├── products.csv
└── transactions.csv

### 4. Notebook Setup
Created:
notebooks/01_data_exploration.ipynb
Environment setup:
Python 3.11 virtual environment (.venv)
Installed and configured:
pandas
numpy
ipykernel (fixed notebook execution issue)

### 5. Data Loading & Validation
Successfully loaded datasets:
Dataset	Shape
campaigns	(50, 7)
customers	(100,000, 7)
events	(2,000,000, 12)
products	(2,000, 6)
transactions	(103,127, 9)

### 6. Data Quality Assessment
6.1 Missing Values
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
6.2 Duplicate Check

All datasets:

campaigns: 0 duplicates
customers: 0 duplicates
events: 0 duplicates
products: 0 duplicates
transactions: 0 duplicates

### 7. Key Observations So Far
7.1 Strong Data Quality Foundation
No duplicates across all datasets
Core tables are structurally sound
7.2 Expected Data Gaps
Event-level product tracking is partial (normal for clickstream data)
Some transaction revenue values are missing (likely incomplete or failed transactions)

### 8. Data Architecture Identified
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

### 9. Current Project Status
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

## Week 2

## 10. Data Cleaning Assessment

### 10.1 Overview

A comprehensive data quality assessment was conducted across all datasets to evaluate completeness, consistency, and structural integrity prior to analysis.

### 10.2 Duplicate Records Check

All datasets (campaigns, customers, events, products, transactions) were evaluated for duplicate records. No duplicates were found across any tables, indicating strong data integrity at the record level.

### 10.3 Missing Value Analysis

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

### 10.4 Interpretation

The dataset is structurally clean with no duplicates and strong relational consistency. However, partial missing values exist in behavioral and transactional tables, which is typical in real-world marketing systems.

Rather than treating these as errors, they are interpreted as meaningful signals of:

* customer journey complexity
* incomplete tracking coverage
* transactional anomalies

### 10.5 Cleaning Strategy

Instead of blanket removal or imputation, a contextual approach will be used:

* Missing product_id in events will be retained where event_type does not require product association
* Missing device_type will be categorized as "Unknown"
* Missing transaction revenue rows will be flagged for separate analysis or exclusion from ROI calculations depending on analytical context

This ensures analytical accuracy while preserving real-world behavioral patterns.
