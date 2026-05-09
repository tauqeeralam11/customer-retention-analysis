<div align="center">

# 📊 Customer Retention & Cohort Analysis Dashboard

### End-to-End Product Analytics Project Using Python, SQL & Power BI

<br>

<img src="images/dashboard_overview.png" width="100%" />

<br>

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![PowerBI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)

</div>

---

# 📌 Project Overview

Customer retention is one of the most critical metrics for product-driven businesses. This project analyzes customer purchase behavior, retention patterns, churn trends, and customer lifetime value using the Olist Brazilian E-Commerce dataset.

The project simulates a real-world product analytics workflow by combining:

✔️ Data Cleaning & Transformation  
✔️ Exploratory Data Analysis (EDA)  
✔️ Cohort-Based Retention Analysis  
✔️ Churn & LTV Modeling  
✔️ SQL Business Analytics  
✔️ Interactive Power BI Dashboarding  

---

# 🎯 Business Objective

The goal of this project is to answer key product and business questions such as:

- How effectively does the platform retain customers?
- How quickly do users churn after their first purchase?
- Which customer cohorts generate the strongest retention?
- What percentage of customers become repeat buyers?
- Which customers contribute the highest revenue?
- What is the estimated lifetime value of a customer?

---

# 🛠️ Tech Stack

<div align="center">

| Technology | Purpose |
|------------|---------|
| 🐍 Python | Data Analysis |
| 🐼 Pandas | Data Manipulation |
| 🔢 NumPy | Numerical Processing |
| 📈 Matplotlib | Visualization |
| 🎨 Seaborn | Cohort Heatmaps |
| 🗄️ MySQL | SQL Analytics |
| 📊 Power BI | Dashboarding |
| ☁️ Google Colab | Development Environment |

</div>

---

# 🧩 Project Workflow

```text
Raw Dataset
     ↓
Data Cleaning & Preprocessing
     ↓
Exploratory Data Analysis
     ↓
Cohort Retention Analysis
     ↓
Churn & LTV Analysis
     ↓
SQL Business Queries
     ↓
Power BI Dashboard
```

---

# 🖥️ Dashboard Preview

## 📍 Full Dashboard

<p align="center">
  <img src="images/dashboard_overview.png" width="95%">
</p>

---

## 📍 Cohort Retention Analysis

<p align="center">
  <img src="images/cohort_analysis.png" width="90%">
</p>

---

## 📍 KPI Overview

<p align="center">
  <img src="images/kpi_overview.png" width="85%">
</p>

---

# 📊 Dashboard Features

The Power BI dashboard includes:

### 📈 Business KPIs
- Total Revenue
- Total Orders
- Total Customers
- Retention Rate
- Churn Rate
- Average Order Value

### 🔥 Customer Analytics
- Repeat vs One-Time Customers
- Top Revenue-Contributing Customers
- Payment Behavior Analysis

### 📉 Retention Analytics
- Cohort Retention Heatmap
- Customer Churn Analysis
- Retention Trend Insights

### 📦 Business Intelligence
- Revenue Trends
- Order Trends
- Interactive Filters
- Customer Segmentation

---

# 📂 Dataset Information

### 📌 Dataset Used
Olist Brazilian E-Commerce Public Dataset

Dataset Link:
[Olist Brazilian E-Commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

### 📌 Dataset Characteristics
- 100k+ Orders
- Multiple Relational Tables
- Customer Information
- Order Transactions
- Payment Details
- Delivery Information

---

# 🔍 Exploratory Data Analysis

The EDA phase focused on identifying:

✔️ Monthly revenue trends  
✔️ Monthly order growth  
✔️ Customer purchase behavior  
✔️ Repeat customer activity  
✔️ Revenue concentration patterns  

### Example Analyses
- Monthly Orders
- Monthly Revenue
- Orders Per Customer
- Repeat Customer Distribution

---

# 🧠 Cohort Analysis

Customers were grouped into monthly acquisition cohorts based on their first purchase month.

The retention analysis tracked:
- returning users
- retention decay
- repeat purchase behavior
- long-term customer engagement

The cohort heatmap highlights customer retention across monthly cohorts and reveals how quickly customer activity declines over time.

---

# 📉 Churn Analysis

Customer churn was estimated using retention-based calculations.

### Retention Formula

```math
Retention\ Rate = \frac{Retained\ Customers}{Total\ Customers} \times 100
```

### Churn Formula

```math
Churn\ Rate = 1 - Retention\ Rate
```

### Key Observation
Most customers exhibited one-time purchase behavior, resulting in high churn and low long-term retention across cohorts.

---

# 💰 Customer Lifetime Value (LTV)

LTV was estimated using:

```math
LTV = Average\ Order\ Value \times Purchase\ Frequency \times Customer\ Lifespan
```

This metric helps estimate the long-term revenue contribution of individual customers.

---

# 📌 Key Business Insights

✔️ Customer retention drops sharply after the first purchase month.  

✔️ Most users exhibit one-time purchase behavior.  

✔️ Long-term retention remains extremely low across most cohorts.  

✔️ Repeat customers contribute disproportionately to total revenue.  

✔️ Credit cards dominate payment transactions across the platform.  

---

# 🗄️ SQL Analytics

Business analytics queries were written in MySQL for:

- Monthly Active Users (MAU)
- Customer Retention
- Churn Analysis
- Revenue Tracking
- Cohort Assignment
- Customer Segmentation
- LTV Analysis

### Example SQL Query

```sql
SELECT
    customer_unique_id,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(payment_value), 2) AS total_spend
FROM clean_orders
GROUP BY customer_unique_id
HAVING total_orders > 1
ORDER BY total_spend DESC;
```

---

# 📁 Repository Structure

```bash
Customer-Retention-Analysis/
│
├── 📂 data/
│   ├── raw/
│   └── processed/
│
├── 📂 notebooks/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_eda.ipynb
│   ├── 03_cohort_analysis.ipynb
│   └── 04_ltv_churn_analysis.ipynb
│
├── 📂 sql/
│   ├── retention_queries.sql
│   ├── churn_queries.sql
│   ├── cohort_queries.sql
│   └── ltv_queries.sql
│
├── 📂 dashboard/
│   └── customer_retention_dashboard.pbix
│
├── 📂 images/
│   ├── dashboard_overview.png
│   ├── cohort_analysis.png
│   └── kpi_overview.png
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

# ⚙️ Installation & Setup

## 1️⃣ Clone Repository

```bash
git clone https://github.com/tauqeeralam11/customer-retention-analysis.git
```

---

## 2️⃣ Install Dependencies

```bash
pip install -r requirements.txt
```

---

## 3️⃣ Run Notebooks

Execute notebooks sequentially:

```bash
01_data_cleaning.ipynb
02_eda.ipynb
03_cohort_analysis.ipynb
04_ltv_churn_analysis.ipynb
```

---

# 🚀 Future Improvements

- Predictive Churn Modeling
- RFM Customer Segmentation
- Retention Forecasting
- Recommendation Systems
- Real-Time Dashboard Integration
- Customer Behavioral Clustering

---

# 👨‍💻 Author

### Tauqeer Alam

---

<div align="center">

### ⭐ If you found this project useful, consider giving it a star

</div>
