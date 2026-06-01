# Retail Consumer Behaviour Analysis

## Overview
End-to-end data analysis project investigating consumer shopping behaviour 
for a retail company to improve sales, customer satisfaction and loyalty.

## Business Question
> How can the company leverage consumer shopping data to identify trends, 
> improve customer engagement, and optimise marketing and product strategies?

## Dataset
- **Source:** [Customer Shopping Trends — Kaggle](https://www.kaggle.com/datasets/iamsouravbanerjee/customer-shopping-trends-dataset)
- **Size:** 3,900 rows × 18 columns
- **Key variables:** Age, Gender, Category, Season, Purchase Amount, 
  Review Rating, Payment Method, Discount Applied

## Tools Used
| Tool | Purpose |
|------|---------|
| Python (Pandas, NumPy, Matplotlib, Seaborn) | Data cleaning & EDA |
| SQL (pandasql) | Business query analysis |
| Power BI | Interactive dashboard |
| GitHub | Version control & sharing |

## Project Structure
retail-consumer-behaviour-analysis/
├── data/
│   └── shopping_trends_cleaned.csv
├── notebooks/
│   └── consumer_analysis.ipynb
├── sql/
│   └── business_queries.sql
├── outputs/
│   ├── revenue_by_category.csv
│   ├── sales_by_season.csv
│   ├── discount_impact.csv
│   ├── top_items.csv
│   ├── payment_by_gender.csv
│   ├── top_customers.csv
│   └── seasonal_category.csv
├── powerbi/
│   ├── Consumer_Behaviour_Dashboard.pbix
│   └── dashboard.pdf
└── report/
├── Consumer_Behaviour_Report.txt
└── Consumer_Behaviour_Presentation.pptx

## Key Findings
1. **Clothing** is the highest revenue-generating category
2. **Fall** is the strongest sales season
3. **Discounts** do not significantly increase average spend
4. **Credit Card & PayPal** are the dominant payment methods
5. The **25–45 age group** is the most active buyer segment
6. **Subscribed customers** purchase more frequently

## How to Run
1. Open `notebooks/consumer_analysis.ipynb` in Google Colab
2. Upload `shopping_trends_updated.csv` from Kaggle
3. Run all cells in order
4. Download output CSVs and open `Consumer_Behaviour_Dashboard.pbix` in Power BI

