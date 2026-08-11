# Goldman Sachs Financial Performance Analysis

## Project Overview

This project evaluates Goldman Sachs' historical financial performance using publicly available company financial data. The analysis focuses on firmwide revenue, profitability, operating expenses, business segment performance, and key financial metrics across 2021–2025.

Firmwide analysis covers **2021–2025**. Business segment analysis covers **2023–2025** using the comparable segment presentation reported in Goldman Sachs' 2025 Form 10-K.

---

## Business Questions

1. How have Goldman Sachs' net revenues and net earnings changed over time?
2. How have operating expenses changed relative to revenue?
3. Which business segments contribute the most revenue, and how has that changed over time?
4. How has Goldman Sachs' profitability changed across the analysis period?
5. What do key financial metrics such as ROE, EPS, and profit margin reveal about performance?
6. What financial patterns should management or investors monitor going forward?

---

## Key Findings

- Net revenues and net earnings declined through 2023 before recovering strongly in 2024–2025.
- By 2025, net revenues had nearly returned to the 2021 level, while net earnings remained below the 2021 peak.
- Operating expenses reached **74.6% of revenue in 2023**, improved to **63.1% in 2024**, and increased slightly to **64.4% in 2025**.
- Global Banking & Markets remained Goldman Sachs' largest revenue contributor, increasing from approximately **64.8% of revenue in 2023 to 71.1% in 2025**.
- Net profit margin declined from **36.5% in 2021 to 18.4% in 2023**, then recovered to **29.5% in 2025**.
- ROE, diluted EPS, and profit margin all improved substantially in 2024–2025, indicating a broad profitability recovery.
- Key areas to monitor include expense growth relative to revenue, continued profitability improvement, and increasing reliance on Global Banking & Markets.

---

## 2025 Key Financial Metrics

| Metric | 2025 Result |
|---|---:|
| Net Revenues | **$58.3B** |
| Net Earnings | **$17.2B** |
| Return on Equity (ROE) | **15.0%** |
| Diluted EPS | **$51.32** |

---

## Executive Dashboard

![Goldman Sachs Financial Performance Dashboard](5_Visualizations/Goldman%20Sachs%20Executive%20Dashboard.png)

The Tableau dashboard summarizes firmwide financial performance, operating efficiency, profitability, business segment contribution, and segment growth.

---

## Analysis Workflow

The project followed an end-to-end data analytics workflow:

1. Collected public financial data from Goldman Sachs annual reports, earnings releases, and SEC filings.
2. Organized and validated firmwide and business segment financial data.
3. Standardized business segment reporting for comparability across 2023–2025.
4. Loaded structured datasets into BigQuery.
5. Used SQL to analyze financial trends, expense efficiency, profitability, business segment contribution, and year-over-year performance.
6. Used Python to validate the datasets, normalize major financial metrics to a common baseline, calculate multi-period growth rates and CAGR, and compare business segment growth.
7. Built an executive Tableau dashboard and stakeholder report to communicate the results.

---

## Technical Stack

- **SQL**
- **Google BigQuery**
- **Python**
- **Google Sheets / Excel**
- **Tableau**

---

## Analytical Methods

The analysis included:

- Year-over-year growth analysis
- Expense-to-revenue ratio
- Net profit margin
- Business segment revenue contribution
- Revenue ranking by business segment
- SQL window functions including `LAG()` and `RANK()`
- Indexed performance analysis
- Compound annual growth rate (CAGR)
- Data validation and comparability checks

---

## Data Quality and Comparability

Goldman Sachs changed its business segment classifications beginning in the fourth quarter of 2025.

To avoid mixing non-comparable segment definitions, this project uses the comparable **2023–2025 business segment presentation included in Goldman Sachs' 2025 Form 10-K**.

All financial figures used in the analysis come from publicly available company disclosures.

Analyst-created metrics such as net profit margin, expense-to-revenue ratio, indexed performance, and CAGR were calculated from those reported financial figures.

---

## Repository Structure

```text
Goldman-Sachs-Financial-Performance-Analysis/
│
├── 1_Project_Planning/
├── 2_Dataset/
├── 3_SQL_Queries/
├── 4_Python_Analysis/
├── 5_Visualizations/
├── 6_Final_Report/
└── README.md
