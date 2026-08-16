# Marketing Attribution ROI Dashboard

## Project Overview

The **Marketing Attribution ROI Dashboard** is an end-to-end business intelligence project developed during my **Data Analytics Internship at Infotact Solutions**.

The project analyses customer interactions, marketing campaigns, marketing spend, customer conversions, transactions, and revenue to evaluate marketing effectiveness and support data-driven budget allocation.

The solution combines **Python, SQL, Power BI, and DAX** to transform large-scale marketing and customer journey data into interactive business intelligence dashboards.

The dashboard enables stakeholders to evaluate performance across marketing channels and campaigns while comparing different attribution models, including **First-Touch, Last-Touch, and Linear Attribution**.

---

## Business Problem

Organizations invest significantly in multiple marketing channels but often struggle to determine which channels and campaigns generate the greatest business value.

Marketing teams need to answer questions such as:

* Which marketing channels generate the highest revenue?
* Which campaigns provide the best return on marketing investment?
* How much revenue should be attributed to each marketing touchpoint?
* Which campaigns are performing efficiently?
* Where should future marketing budgets be allocated?
* How does the selected attribution methodology affect performance evaluation?

Without a structured attribution and business intelligence solution, these decisions can rely heavily on aggregate reporting or assumptions.

This project addresses the problem by integrating customer journey, campaign, marketing spend, and transaction data into an interactive analytics solution.

---

## Project Objectives

The project objectives were to:

* Explore and understand customer journey data.
* Clean and preprocess marketing and transaction data.
* Analyse marketing channel and campaign performance.
* Measure customer conversion and revenue contribution.
* Implement multiple marketing attribution models.
* Develop marketing KPIs including ROI and ROAS.
* Build interactive Power BI dashboards.
* Generate actionable business insights and recommendations.

---

# Dataset

**Dataset:** Marketing & E-Commerce Analytics Dataset

**Source:** Kaggle

The project uses multiple interconnected datasets representing different stages of the customer and marketing journey.

### Data Files

| Dataset            | Description                                                                                                         |
| ------------------ | ------------------------------------------------------------------------------------------------------------------- |
| `campaigns.csv`    | Marketing campaign information including campaign channels, objectives, dates, target segments, and expected uplift |
| `customers.csv`    | Customer demographic and profile information                                                                        |
| `events.csv`       | Customer interactions and engagement events across marketing channels                                               |
| `products.csv`     | Product catalogue and product attributes                                                                            |
| `transactions.csv` | Customer purchase transactions and revenue information                                                              |

The customer interaction data contains **over 2 million records**, providing a substantial basis for customer journey and attribution analysis.

---

# Key Data Relationships

The datasets were integrated using common business identifiers.

* `customer_id` connects customer information with customer interactions and transactions.
* `campaign_id` connects marketing campaigns with customer journey activity and transactions.
* Transaction data provides revenue and purchase outcomes.
* Event data provides the customer touchpoints required for attribution analysis.
* The Date dimension supports monthly, quarterly, and yearly analysis.

---

# Stakeholder Personas

The dashboard was designed around the information needs of different business stakeholders.

| Stakeholder                  | Primary Business Need                                          | Dashboard Application                                           |
| ---------------------------- | -------------------------------------------------------------- | --------------------------------------------------------------- |
| **Marketing Director / CMO** | Evaluate overall marketing effectiveness and budget efficiency | Executive KPIs, ROI, ROAS, revenue and channel contribution     |
| **Marketing Manager**        | Monitor channel and campaign performance                       | Channel performance, campaign rankings and attribution analysis |
| **Marketing Analyst**        | Analyse customer journeys and attribution                      | First-Touch, Last-Touch and Linear attribution comparison       |
| **Campaign Manager**         | Identify campaigns requiring optimisation                      | Campaign revenue, spend, ROAS and performance matrix            |
| **Business Executive**       | Understand marketing contribution to business performance      | Executive overview and strategic recommendations                |

---

# Project Workflow

The project followed an end-to-end analytics workflow.

### 1. Business Understanding

The business requirements were defined around marketing performance measurement, customer conversion analysis, attribution, ROI evaluation, and campaign optimisation.

### 2. Data Exploration

Python and Pandas were used to:

* inspect dataset structures,
* examine data types,
* identify missing values,
* investigate duplicates,
* understand distributions,
* and evaluate relationships between datasets.

### 3. Data Cleaning & Preparation

The data was prepared for analysis through:

* missing-value assessment and treatment,
* data type standardisation,
* consistency checks,
* relationship validation,
* feature engineering,
* and creation of analytical variables.

### 4. SQL Analysis

SQL was used to:

* query and aggregate marketing data,
* analyse campaign performance,
* validate revenue and transaction metrics,
* examine customer conversion behaviour,
* and verify relationships between datasets.

### 5. Data Modelling

Power BI was used to develop a structured analytical model incorporating dimension and fact tables.

**Dimension Tables**

* `DimCustomer`
* `DimCampaign`
* `DimDate`

**Fact Tables**

* `FactCustomerJourney`
* `FactTransactions`

The Date dimension enables time-based analysis across year, quarter, month, and other date attributes.

### 6. DAX Development

DAX was used to develop:

* executive KPIs,
* revenue measures,
* marketing spend measures,
* ROAS,
* ROI,
* conversion rate,
* attributed revenue,
* campaign performance metrics,
* and dynamic attribution calculations.

### 7. Power BI Dashboard Development

The final Power BI solution was designed around executive-level monitoring and campaign-level analysis.

---

# Attribution Models

A major component of the project is the ability to compare different attribution methodologies.

### First-Touch Attribution

Revenue is attributed to the customer's first marketing touchpoint.

This provides insight into channels that contribute to initial customer acquisition.

### Last-Touch Attribution

Revenue is attributed to the final marketing touchpoint before conversion.

This helps identify channels associated with the final stage of the customer journey.

### Linear Attribution

Revenue is distributed across the customer's marketing touchpoints.

This provides a broader view of the contribution of multiple interactions throughout the customer journey.

The **Attribution Model** selector allows users to dynamically switch between these approaches within the Power BI dashboard.

---

# Dashboard Screenshots

## 1. Executive Marketing Attribution ROI Dashboard

The Executive Dashboard provides a high-level view of marketing performance.

It includes:

* Total Revenue
* Total Marketing Spend
* Return on Ad Spend
* ROI
* Conversion Rate
* Converting Customers
* Total Customers
* Total Transactions
* Cost per Conversion
* Customer Conversion Funnel
* Marketing Spend by Channel
* Attributed Revenue by Channel
* Campaign ROAS by Channel
* Campaign Performance Analysis
* Monthly Revenue Performance

The dashboard provides executives and marketing managers with a consolidated view of marketing effectiveness.

![Marketing Attribution ROI Executive Dashboard](images/Executive%20Dashboard.png)

### Key Dashboard Indicators

The dashboard currently shows:

* **Total Revenue:** $8.37M
* **Marketing Spend:** $671.37K
* **ROAS:** 12.47x
* **ROI:** 1,147%
* **Conversion Rate:** 64.04%
* **Converting Customers:** 64,035
* **Total Customers:** 100,000
* **Total Transactions:** 103,127
* **Cost per Conversion:** $10.48

These indicators provide a quick executive assessment of marketing performance.

---

# 2. Campaign Performance Analysis

The Campaign Performance Analysis page focuses on campaign-level decision-making.

It provides interactive filters for:

* Year
* Quarter
* Channel
* Attribution Model

The page includes:

### Top 10 Campaigns by Revenue

Ranks campaigns according to generated revenue and helps identify the campaigns contributing the greatest financial value.

### Campaign ROAS Ranking

Ranks campaigns based on advertising efficiency and helps identify campaigns generating stronger returns relative to marketing spend.

### Campaign Contribution

Shows the contribution of marketing channels to overall campaign revenue.

### Top 10 Campaign Spend vs Revenue

Compares campaign marketing expenditure against generated campaign revenue.

This allows stakeholders to identify campaigns that generate strong revenue relative to their investment.

### Campaign Performance Matrix

Provides detailed campaign-level metrics including:

* Campaign Name
* Campaign Marketing Spend
* Campaign Revenue
* Campaign ROAS
* Campaign ROAS Display
* Total Transactions

This supports detailed campaign evaluation and optimisation.

![Campaign Performance Analysis Dashboard](images/Campaign%20Performance%20Analysis.png)

---

# Key Business Insights

The analysis produced several important observations.

### Marketing Efficiency

The dashboard indicates an overall **ROAS of 12.47x**, meaning that marketing generated approximately $12.47 in revenue for every $1 of marketing spend under the selected attribution view.

### Marketing ROI

The overall ROI shown on the dashboard is approximately **1,147%**, demonstrating strong aggregate marketing returns.

### Customer Conversion

The dashboard reports a **64.04% conversion rate**, with 64,035 converting customers from a total customer base of 100,000.

### Channel Performance

The analysis enables stakeholders to compare revenue contribution, marketing investment, and ROAS across channels including:

* Email
* Paid Search
* Social
* Display
* Affiliate
* No Campaign

### Campaign Performance

Campaign-level analysis reveals differences in revenue generation and marketing efficiency, allowing stakeholders to identify high-performing campaigns and opportunities for optimisation.

### Attribution Sensitivity

The availability of First-Touch, Last-Touch, and Linear attribution models demonstrates that marketing performance can be interpreted differently depending on how customer touchpoints are credited.

---

# Strategic Recommendations

Based on the analysis, the dashboard supports the following recommendations:

1. **Increase investment in high-performing channels** where revenue and ROAS demonstrate strong performance.

2. **Optimise underperforming campaigns** by reviewing their marketing spend relative to generated revenue.

3. **Use multiple attribution models** when evaluating marketing performance rather than relying on a single attribution methodology.

4. **Allocate future budgets using campaign-level ROI and ROAS insights.**

5. **Continuously monitor customer conversion performance** to identify changes in marketing effectiveness.

6. **Use customer journey insights** to improve acquisition and conversion strategies.

---

# Tools & Technologies

* **Python**
* **Pandas**
* **NumPy**
* **Matplotlib**
* **Jupyter Notebook**
* **SQL**
* **Power BI**
* **DAX**
* **Git**
* **GitHub**
* **Visual Studio Code**

---

# Repository Structure

```text
Marketing-Attribution-ROI-Dashboard/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   ├── 01_data_exploration.ipynb
│   └── 02_data_cleaning.ipynb
│
├── reports/
│   └── Project_Charter.md
│
├── images/
│   ├── Executive Dashboard.png
│   └── Campaign Performance Analysis.png
│
├── README.md
└── requirements.txt
```

---

# Project Deliverables

* Project Charter
* Data Exploration Notebook
* Data Cleaning Notebook
* SQL Analysis
* Data Model
* DAX Measures
* Marketing Attribution Analysis
* Interactive Power BI Dashboard
* Executive Insights & Recommendations
* Project Documentation

---

# Business Value

The Marketing Attribution ROI Dashboard provides a centralized analytical solution for evaluating marketing effectiveness.

It enables stakeholders to:

* Monitor marketing KPIs.
* Evaluate channel performance.
* Compare campaigns.
* Analyse customer conversions.
* Compare attribution methodologies.
* Evaluate marketing ROI and ROAS.
* Identify budget optimisation opportunities.
* Support evidence-based marketing decisions.

---

# Project Timeline

### Week 1

* Repository setup
* Project charter
* Dataset exploration

### Week 2

* Data cleaning
* Exploratory analysis
* Data preparation

### Week 3

* Attribution analysis
* KPI development
* SQL analysis
* Data modelling

### Week 4

* Power BI dashboard development
* Testing
* Executive insights
* Documentation
* Final presentation

---

# Author

**Temitope Amos Agboola**

Data Analytics Intern – Infotact Solutions

**Project:** Marketing Attribution ROI Dashboard

---

## Acknowledgement

This project was completed as part of my **Data Analytics Internship at Infotact Solutions**.

The internship provided an opportunity to apply data analytics, business intelligence, and visualization techniques to a practical marketing analytics problem while developing skills in Python, SQL, Power BI, DAX, data modelling, and business storytelling.
