# Marketing-Attribution-ROI-Dashboard
Multi-Touch Marketing Attribution and ROI Analysis using Python, SQL, SQLite, and Power BI.

# DAY-1:-
# PHASE-1:- start to finding raw data in which all required things columns are present by using:-
kaggle website, github database, internet seaching, gemini, chatGPT etc... 
SHARE the raw data with team after finding final raw data for review , observation, discussion and feedback. 

# Multi-Touch Marketing Attribution & ROI Dashboard

## Project Overview

The goal of this project is to build a Multi-Touch Marketing Attribution and ROI Dashboard that helps marketing teams understand how different channels contribute to customer conversions and revenue generation.

Traditional last-click attribution often assigns all conversion credit to the final interaction. This project aims to implement more advanced attribution methodologies such as First-Touch, Last-Touch, and Linear Attribution to provide a more accurate view of marketing performance.

The final solution will integrate customer journey data, campaign information, transaction records, and customer demographics to calculate marketing effectiveness metrics and support data-driven decision making.

---

# Tools & Technologies

* Python (Pandas, NumPy)
* PostgreSQL
* Power BI
* Jupyter Notebook
* Git & GitHub

---

# Dataset Overview

The project uses five interconnected datasets:

### Events Table

Contains customer interactions such as views, clicks, add-to-cart actions, purchases, and bounces.

### Transactions Table

Contains purchase transactions, revenue information, discounts, and refund indicators.

### Campaigns Table

Contains campaign metadata including channel, objective, target segment, and expected uplift.

### Customers Table

Contains customer demographic and acquisition information.

### Products Table

Contains product category, brand, pricing, and premium status information.

---

# Project Progress

## Day 1 – Dataset Research & Selection

Activities Completed:

* Explored multiple marketing attribution datasets
* Evaluated dataset suitability against project requirements
* Identified required attributes for attribution modeling
* Selected final dataset structure containing:

  * Events
  * Transactions
  * Campaigns
  * Customers
  * Products

### Outcome

A suitable dataset ecosystem was finalized that supports customer journey analysis, campaign mapping, transaction tracking, and attribution modeling.

---

# DAY-2 : PHASE 1:-
## Day 2 – Data Understanding (Phase 1)

Activities Completed:

* Imported all datasets into Jupyter Notebook
* Performed shape analysis
* Reviewed data types
* Conducted missing value assessment
* Verified duplicate records
* Analyzed customer-event-transaction relationships
* Investigated traffic source distribution
* Evaluated campaign objectives and channels
* Identified campaign_id = 0 as non-campaign (Organic/Direct) traffic
* Verified attribution feasibility

### Key Findings

* 2 million customer interaction events available
* 103,127 transaction records available
* 100,000 unique customers available
* Revenue data available for attribution analysis
* No duplicate records found
* Traffic source standardization required
* Date columns require datetime conversion
* Dataset fully supports:

  * First-Touch Attribution
  * Last-Touch Attribution
  * Linear Attribution
  * Revenue Attribution
* Executive Presentation
* Project Documentation


# DAY-3 : PHASE-2:-
# Day 3 – Data Cleaning & Data Quality EDA (Phase 2)

### Objectives

The objective of Day 3 was to transform the raw datasets into analysis-ready datasets while preserving business meaning and ensuring data integrity.

### Activities Completed

#### 1. Datetime Standardization

Converted all date and timestamp fields from string format to datetime format:

* events.timestamp
* transactions.timestamp
* campaigns.start_date
* campaigns.end_date
* customers.signup_date
* products.launch_date

#### 2. Traffic Source Standardization

Resolved category inconsistencies within the Events dataset.

Examples:

* Organic → ORGANIC
* ORGANIC → ORGANIC
* Email → EMAIL
* EMAIL → EMAIL

Final Traffic Sources:

* ORGANIC
* PAID SEARCH
* SOCIAL
* EMAIL
* DIRECT

#### 3. Missing Value Investigation

Performed detailed investigation of missing values across all datasets.

Findings:

* Event product_id missing values were primarily associated with bounce events.
* Transaction records containing missing product_id also contained missing gross_revenue.
* Approximately 10.1% of transaction records contained missing revenue information.
* Missing revenue records were retained because no evidence suggested data corruption or duplicate transactions.

#### 4. Campaign Validation

Validated campaign relationships across Events, Transactions, and Campaign datasets.

Findings:

* campaign_id = 0 represents non-campaign traffic.
* Non-campaign traffic is primarily associated with ORGANIC and DIRECT sources.
* Campaign mappings are consistent across all datasets.

#### 5. Final Validation

Completed:

* Shape validation
* Duplicate validation
* Campaign validation
* Revenue validation
* Purchase-to-transaction validation

### Outcome

Created production-ready cleaned datasets:

* clean_events.csv
* clean_transactions.csv
* clean_campaigns.csv
* clean_customers.csv
* clean_products.csv

These datasets are now ready for data modeling, ER diagram creation, PostgreSQL implementation, and attribution analysis.
