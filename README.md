# gcp-taxi-analysis
report &amp; dashboard for Joe's Taxi Company 2022 Revenue public dataset on GCP

---

# NYC Taxi Mini-Pipeline – GCP BigQuery + Looker Studio

**Role** Entry-level Data Analyst Portfolio Project  
**Tools** BigQuery (SQL) • Looker Studio • Google Cloud Free Tier  

---

### 1. Objective
Extract daily NYC Yellow-Taxi data, transform it to monthly revenue, and visualize the results in an interactive dashboard.

### 2. Architecture 
```text
BigQuery Public Dataset  →  SQL Transformation  →  BigQuery Table  →  Looker Studio
tlc_yellow_trips_2022      aggregate (CTAS)      monthly_category_sales  line + bar charts

---

# 1. Clone this repo
git clone https://github.com/<alexychew>/gcp-taxi-analysis.git
# 2. Open queries.sql in BigQuery UI and run.
# 3. Open the dashboard link below.

### 3. Visualization
[Looker Studio – NYC Taxi Mini-Pipeline](https://lookerstudio.google.com/s/iPj5QJDCZDA)
