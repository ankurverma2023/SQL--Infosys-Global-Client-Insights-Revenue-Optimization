# Infosys Global Client Insights & Revenue Optimization

## 📊 Project Overview

This project uses Microsoft SQL Server to perform **Exploratory Data Analysis (EDA)** and business-focused querying on a dataset of 10,000+ international clients from Infosys Ltd.

It is split into two real-world case studies:
- **Case Study 1:** Country-level revenue trends
- **Case Study 2:** Industry-level performance and workload management

---

## 🧰 Tools & Skills Used

- Microsoft SQL Server (T-SQL)
- SQL-based Exploratory Data Analysis (EDA)
- Business Intelligence
- CSV Data Loading

---

## 🔍 EDA Techniques Performed

- Value distribution analysis of `RevenueUSD`
- Profiling `Country`, `Industry`, and `ContactName` fields
- Identifying data outliers (very high-revenue clients)
- Aggregating by categories to spot patterns
- Filtering to isolate high-impact segments (e.g., avg. revenue > $4M)

Example:  
```sql
-- Revenue range check
SELECT MIN(RevenueUSD), MAX(RevenueUSD), AVG(RevenueUSD)
FROM Infosys_InternationalClients_10000;
