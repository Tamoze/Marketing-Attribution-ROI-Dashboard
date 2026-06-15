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


# Day 4 – Phase 3: Data Modeling & ER Diagram Design

## Objective
The objective of this phase was to transform the cleaned marketing attribution dataset into a structured analytical model suitable for SQL querying, attribution analysis, KPI calculations, and BI dashboard development.

## Tasks Performed

### 1. Primary Key Validation
Validated the unique identifiers for all tables:

- events → event_id
- transactions → transaction_id
- customers → customer_id
- campaigns → campaign_id
- products → product_id

### 2. Foreign Key Relationship Identification
Identified logical relationships between fact and dimension tables.

Relationships:

- events.customer_id → customers.customer_id
- events.campaign_id → campaigns.campaign_id
- events.product_id → products.product_id

- transactions.customer_id → customers.customer_id
- transactions.campaign_id → campaigns.campaign_id
- transactions.product_id → products.product_id

### 3. Cardinality Analysis
Validated relationship types:

- Customer → Events (1:M)
- Customer → Transactions (1:M)
- Campaign → Events (1:M)
- Campaign → Transactions (1:M)
- Product → Events (1:M)
- Product → Transactions (1:M)

### 4. Fact and Dimension Table Identification

Fact Tables:
- events
- transactions

Dimension Tables:
- customers
- campaigns
- products

### 5. Star Schema Design
Designed a star schema architecture for business intelligence reporting and attribution analysis.

Fact Tables:
- Fact_Events
- Fact_Transactions

Dimension Tables:
- Dim_Customers
- Dim_Campaigns
- Dim_Products

### 6. Data Dictionary Creation
Documented all tables, columns, data types, business definitions, and relationships.

### 7. ER Diagram Documentation
Created the logical ER structure and documented entity relationships for PostgreSQL implementation.

## Key Deliverables

- Data Model Design
- Relationship Mapping
- Cardinality Validation
- Star Schema Architecture
- Data Dictionary
- ER Diagram Documentation

## Outcome

The dataset is now fully prepared for PostgreSQL implementation, advanced SQL querying, attribution modeling, KPI calculation, and Power BI dashboard development.



# Day 5 – Phase 4: PostgreSQL Implementation & Attribution Modeling

## Objective

The objective of this phase was to implement the marketing attribution data model in PostgreSQL, establish relationships between tables, and build attribution models using advanced SQL window functions.

## Tasks Performed

### 1. Database Creation

Created PostgreSQL database:

- marketing_attribution_db

### 2. Table Creation

Created tables:

- events
- transactions
- customers
- campaigns
- products

### 3. Data Import

Imported cleaned CSV files into PostgreSQL.

Successfully loaded:

- 2,000,000 event records
- 103,127 transaction records
- 100,000 customer records
- 50 campaign records
- 2,000 product records

### 4. Row Count Validation

Validated row counts after import.

### 5. Referential Integrity Validation

Verified:

- Customer relationships
- Campaign relationships
- Product relationships

Resolved campaign_id = 0 issue by creating a Non-Campaign record.

### 6. Foreign Key Creation

Created foreign key constraints between:

- Events ↔ Customers
- Events ↔ Campaigns
- Events ↔ Products

- Transactions ↔ Customers
- Transactions ↔ Campaigns
- Transactions ↔ Products

### 7. Customer Journey Sequencing

Used ROW_NUMBER() window function to sequence customer touchpoints chronologically.

### 8. First Touch Attribution

Identified the first marketing touchpoint responsible for customer acquisition.

### 9. Last Touch Attribution

Identified the final interaction before conversion.

### 10. Linear Attribution

Distributed conversion credit equally across all customer touchpoints.

### 11. Revenue Attribution Analysis

Calculated:

- Revenue by Campaign
- Revenue by Channel
- Revenue by Objective

## Key Insights

- Organic traffic generated the highest first-touch and last-touch customer volume.
- Non-campaign traffic contributed significant revenue.
- Reactivation campaigns generated the highest revenue among marketing objectives.
- Attribution models successfully identified channel contribution across the customer journey.

## Outcome

A fully functional PostgreSQL attribution engine was built using advanced SQL techniques, preparing the project for ROAS, ROI, CAC calculation, and Power BI dashboard development.
