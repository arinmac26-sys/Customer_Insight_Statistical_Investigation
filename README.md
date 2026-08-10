# 🔎 Unlocking Customer Insights: A Statistical Investigation

> **Senior Data Analytics Portfolio Project — Arindam Das Biswas**

A portfolio-grade customer analytics project that combines **Python, Pandas, NumPy, Matplotlib, Seaborn, SciPy and SQL data modeling** to investigate customer demographics, spending behavior, engagement, and statistically test business hypotheses.

## 🎯 Executive Summary

This project transforms a customer-level flat dataset into a structured analytics workflow:

**Raw Data → Data Quality → Cleaning → Descriptive Analytics → Visualization → Bivariate Analysis → Statistical Testing → Business Insights → SQL Data Model**

The supplied dataset contains **10,675 records, 12 fields and 1,000 unique CustomerIDs**. The project evaluates customer characteristics such as age, gender, education, marital status, pet ownership, state, monthly spend and days since last interaction.

## 🧰 Tech Stack

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?logo=pandas)
![NumPy](https://img.shields.io/badge/NumPy-Numerical%20Computing-013243?logo=numpy)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-11557c)
![Seaborn](https://img.shields.io/badge/Seaborn-Statistical%20Visualization-76b5c5)
![SciPy](https://img.shields.io/badge/SciPy-Statistics-8CAAE6)
![SQL](https://img.shields.io/badge/SQL-Data%20Modeling-orange)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?logo=github)

## 📁 Repository Architecture

```text
Customer_Insight_Statistical_Investigation/
│
├── 01_Data/
│   ├── raw/
│   │   └── customer_insights_raw.csv
│   └── cleaned/
│       └── customer_insights_clean.csv
│
├── 02_Notebooks/
│   └── Customer_Insight_Statistical_Investigation.ipynb
│
├── 03_Scripts/
│   ├── python/
│   │   ├── 01_data_quality.py
│   │   ├── 02_data_cleaning.py
│   │   └── 03_statistical_tests.py
│   └── sql/
│       ├── DDL/
│       │   └── 01_create_schema.sql
│       ├── DML/
│       │   └── 01_load_customer_data.sql
│       └── Queries/
│           └── 01_business_queries.sql
│
├── 04_Analysis/
│   ├── descriptive/
│   ├── bivariate/
│   └── hypothesis_testing/
│       └── statistical_results.md
│
├── 05_Visualizations/
│   └── *.png
│
├── 06_Documentation/
│   ├── DATA_DICTIONARY.md
│   ├── DATA_CLEANING.md
│   ├── METHODOLOGY.md
│   └── BUSINESS_INSIGHTS.md
│
├── 07_Diagrams/
│   ├── ERD.png
│   ├── ERD.mmd
│   └── PROJECT_ARCHITECTURE.png
│
├── 08_Reports/
│   └── STATISTICAL_REPORT.md
│
└── 09_Project_Assets/
    └── requirements.txt
```

## 📊 Dataset Profile

| Metric | Value |
|---|---:|
| Records | 10,675 |
| Columns | 12 |
| Unique Customers | 1,000 |
| Duplicate Rows | 0 |
| Missing Values | 0 |
| Mean Age | 49.47 |
| Mean Monthly Spend | 331.61 |
| Median Monthly Spend | 282.11 |

## 🧹 Data Quality & Cleaning

The source notebook checks structure, null values and data types. The cleaned portfolio dataset additionally converts `JoinDate` and `TransactionDate` into consistent date representations.

The source data has **no missing values and no exact duplicate rows**. It contains 1,000 unique CustomerIDs across 10,675 records, which is important when interpreting the data as customer activity/transaction history rather than a one-row-per-customer master table.

See [`06_Documentation/DATA_CLEANING.md`](06_Documentation/DATA_CLEANING.md).

## 📈 Analysis Performed

### Descriptive Analytics
- Mean, median and standard deviation
- Customer demographic distributions
- Monthly spend distribution
- State-level customer contribution
- Education-level distribution

### Bivariate Analytics
- Age vs MonthlySpend
- MonthlySpend by education
- MonthlySpend by marital status
- MonthlySpend by gender
- MonthlySpend by state
- Gender × marital status crosstab
- Correlation matrix

### Statistical Hypothesis Testing

| Business Question | Statistical Test |
|---|---|
| Do males and females spend differently? | Independent two-sample t-test |
| Does education level impact average monthly spend? | One-way ANOVA |
| Is marital status related to pet ownership? | Chi-square test of independence |
| Are older people less active? | Pearson correlation |
| Does state-wise spend vary significantly? | One-way ANOVA |

The notebook uses **α = 0.05** as the decision threshold.

## 🧪 Key Statistical Findings

- **Gender vs spend:** p = **0.734522** → fail to reject H0.
- **Education vs spend:** p = **0.922359** → fail to reject H0.
- **Marital status vs pet category:** p = **2.23897e-25** → reject H0; evidence of association.
- **Age vs days since last interaction:** r = **-0.003970**, p = **0.681691** → no statistically significant linear relationship.
- **State vs spend:** p = **0.345719** → fail to reject H0.

## 💼 Business Impact

This project demonstrates how a Senior Data Analyst can move beyond charts into **evidence-based decision support**:

1. Separate descriptive patterns from statistically supported differences.
2. Avoid over-targeting gender, education or state segments when tests do not show significant mean differences.
3. Investigate the statistically significant relationship between marital status and pet ownership for targeted segmentation.
4. Treat engagement variables carefully: the tested Age → DaysSinceLastInteraction relationship is not statistically significant.
5. Use the normalized SQL model as a foundation for scalable reporting and downstream BI.

## 🖼️ Visualization Gallery

All notebook-generated chart outputs are preserved as standalone PNG files under [`05_Visualizations/`](05_Visualizations/).

Examples include:
- Age distribution
- Monthly spend distribution
- Boxplots
- Gender and education distributions
- State distribution
- Age vs monthly spend
- Spend by education, marital status, gender and state
- Correlation matrix
- Gender × marital-status analysis

## 🗄️ SQL & Data Modeling

The repository includes:
- **DDL** for a normalized portfolio schema
- **DML** examples for loading/staging source data
- Business-analysis SQL queries
- ERD showing the relationship between customers, reference dimensions and activity/transaction records

Because the source file is a flat dataset, the ERD is a **derived analytical data model**, not a claim that the original CSV was supplied as normalized relational tables.

## 🚀 Reproducibility

```bash
git clone <YOUR_GITHUB_REPOSITORY_URL>
cd Customer_Insight_Statistical_Investigation

python -m venv .venv
source .venv/bin/activate        # macOS/Linux
# .venv\Scripts\activate       # Windows

pip install -r 09_Project_Assets/requirements.txt
```

Then open:

```text
02_Notebooks/Customer_Insight_Statistical_Investigation.ipynb
```

## 👨‍💻 Portfolio Positioning

**Target Role:** Senior Data Analyst / Senior Data Analytics / BI & Analytics

**Demonstrates:** Data cleaning • Statistical analysis • Hypothesis testing • Exploratory data analysis • Business storytelling • Python analytics • SQL modeling • Data quality • Visualization • Analytical reasoning

---

### Author

**Arindam Das Biswas**  
Senior Data Analytics Portfolio Project
