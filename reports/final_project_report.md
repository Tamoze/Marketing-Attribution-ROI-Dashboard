## 1. Project Objective
The project analyzes customer journeys and marketing touchpoints to understand which channels and campaigns contribute to purchases.
 
A customer may interact with multiple marketing touchpoints before buying. Multi-touch attribution helps avoid giving all credit to only the last click.
## 2. Data Loading
 
Loads five datasets:

- events.csv
- transactions.csv
- customers.csv
- products.csv
- campaigns.csv
Each dataset gives a different part of the business picture:

- Events show customer behavior.
- Transactions show purchases and revenue.
- Customers show customer segments.
- Products show product categories.
- Campaigns show campaign/channel metadata.
## 3. Data Validation



- Dataset shapes
- Expected columns
- Missing values
- Date validity
- Ad spend availability

Validation prevents wrong calculations later. For example, missing revenue values should not be used in attribution.
## 4. Missing Value Analysis
 
Creates a missing value report for every dataset.


Missing values can affect joins, revenue calculations, funnel analysis, and attribution results.

**Important interpretation:**  
Missing product_id in events is not always an error because some page views may not be product-specific.


## 5. Date Conversion

 
Converts timestamp and date columns into datetime format.


 
Attribution depends on time order. The project must know which event happened before the purchase.





## 6. Traffic Source Cleaning

 
Standardizes traffic_source values by removing extra spaces and fixing capitalization.


Without cleaning, values like “organic”, “Organic”, and “ORGANIC” may be counted separately.





## 7. campaign_id = 0 Handling
 
Creates a “No Campaign” row for campaign_id = 0.


campaign_id = 0 appears in events and transactions but not in the official campaigns table. It likely means organic, direct, or unattributed activity.


## 8. Transaction Enrichment

Joins transactions with customers, products, and campaigns.

 
This makes it possible to analyze revenue by channel, product category, and loyalty tier.



## 9. Summary Metrics

Creates KPI metrics such as:

- Total Transactions
- Valid Revenue Transactions
- Unique Buyers
- Refund Count
- Recorded Revenue - All Transactions
- Revenue from Non-Refunded Transactions
- Refund-Flagged Transaction Value

These metrics summarize the business at a high level for the Executive Overview page.

Instead of only saying “gross revenue” and “net revenue,” the corrected version uses clearer names because refund-flagged transactions may affect the total.



## 10. Funnel Analysis
 
Counts customer journey stages:

1. view
2. click
3. add_to_cart
4. purchase

It also calculates conversion from previous stage and drop-off count.
 
The funnel shows where customers drop off before purchasing.


---

## 11. Revenue Segment Tables


Creates:

- Revenue by channel
- Revenue by product category
- Revenue by loyalty tier


These tables show which channels, categories, and customer groups contribute most to revenue.



---

## 12. Multi-Touch Attribution


Connects customer touchpoints to purchase transactions using a 30-day lookback window.

Attribution models:

- First-touch: first event gets full revenue credit.
- Last-touch: last event gets full revenue credit.
- Linear: revenue is split equally across all touchpoints.


Different attribution models answer different business questions.


---

## 13. Why Sampling Was Used


Uses a reproducible sample of valid transactions for attribution.


The events dataset is very large. Joining all events with all transactions on a local laptop can be slow and memory-heavy.


---

## 14. Synthetic Ad Spend

Creates synthetic daily spend, impressions, clicks, CTR, CPC, and CPM using campaign metadata.


The original datasets do not contain real spend, cost, budget, CPC, CPM, ROAS, or CAC data.

 

---

## 15. Synthetic ROI Metrics

Calculates:

- ROAS = Attributed Revenue / Spend
- CAC = Spend / Attributed Customers
- Cost per Conversion = Spend / Attributed Transactions
- CPC = Spend / Clicks
- CPM = Spend / Impressions × 1000
- CTR = Clicks / Impressions

 
These metrics help demonstrate marketing efficiency, but only as simulated outputs.


---

## 16. Power BI Dashboard Pages

The final dashboard contains:

1. Executive Overview  
2. Attribution Comparison  
3. Funnel Analysis  
4. Customer/Product Segments  
5. Synthetic ROI Analysis  
6. Methodology and Data Limitations  



---

# Key Dashboard Insights

## Executive Overview

The business has strong activity with more than 100K transactions and around 64K unique buyers. This gives enough volume for attribution and funnel analysis.

## Attribution

No Campaign receives the highest attributed revenue. This suggests many purchases are organic/direct or not properly tagged with campaign information.

## Funnel

Major drop-offs happen from view to click and from add-to-cart to purchase. This suggests landing page optimization and checkout improvement are important.

## Product Segments

Electronics is the strongest product category, followed by Home and Fashion. These categories should receive focused marketing attention.

## Customer Segments

Bronze and Silver tiers contribute strongly to total revenue. This may be because they have larger customer counts. The company can target them with upgrade or retention campaigns.

## Synthetic ROI

Email appears more efficient in the synthetic ROI page, while Paid Search has higher synthetic spend and CAC. However, these are demonstration insights only because spend is synthetic.

---

# Final Recommendations

1. Improve campaign tracking to reduce the large No Campaign category.
2. Use campaign IDs and UTM parameters consistently.
3. Focus marketing on strong categories such as Electronics, Home, and Fashion.
4. Improve call-to-action design to reduce view-to-click drop-off.
5. Reduce cart abandonment through checkout simplification and retargeting.
6. Create loyalty upgrade campaigns for Bronze and Silver customers.
7. Collect real ad spend data in the future for accurate ROAS and CAC.
8. Compare first-touch, last-touch, and linear attribution before making budget decisions.

---