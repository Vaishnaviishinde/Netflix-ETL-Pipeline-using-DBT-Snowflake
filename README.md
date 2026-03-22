# Netflix-ETL-Pipeline-using-DBT-Snowflake

# Netflix ETL Pipeline using DBT & Snowflake

## 📌 Overview

This project builds a scalable ETL pipeline using DBT and Snowflake to transform raw movie datasets into clean, analytics-ready data models. It follows a structured approach to handle real-world data engineering challenges like data quality, historical tracking, and modular transformations.

The objective is to design a reliable data pipeline that supports business insights such as user behavior analysis, movie trends, and tagging patterns, while maintaining data accuracy and traceability.

---

## ⚙️ Tech Stack

* DBT (Data Build Tool)
* Snowflake (Cloud Data Warehouse)
* SQL
* AWS S3 (Data Ingestion Layer)
* Git & GitHub

---

## 🏗️ Architecture & Workflow

1. **Data Ingestion**

   * Raw data stored in S3 and loaded into Snowflake (`RAW` layer)

2. **Staging Layer**

   * Data cleaning, type casting, and standardization

3. **Transformation Layer**

   * Dimensional models (`dim_*`) and fact tables (`fct_*`)
   * Applied business logic for analytics

4. **Snapshots**

   * Implemented Slowly Changing Dimensions (SCD Type 2)
   * Tracked historical changes with validity timestamps

5. **Testing & Validation**

   * Ensured data quality using DBT tests

6. **Documentation**

   * Generated lineage and metadata using DBT Docs

---

## 📂 Project Structure

```
netflix/
│── models/
│   ├── staging/
│   ├── dim/
│   ├── fact/
│── snapshots/
│── tests/
│── macros/
│── seeds/
│── dbt_project.yml
│── packages.yml
│── README.md
```

---

## 🔑 Key Features

* Layered data modeling (Staging → Dimension → Fact)
* Data quality checks using DBT testing
* Historical tracking using snapshots (SCD Type 2)
* Reusable transformations using macros
* Clean, modular, and maintainable pipeline
* Auto-generated documentation with lineage graph

---

## ⚡ DBT Concepts Used (Brief)

* **Materializations**: Used table/view strategies for efficient model building
* **Seeds**: Loaded static reference data into Snowflake
* **Testing**: Applied generic and custom tests for data validation
* **Snapshots**: Implemented SCD Type 2 for change tracking

---

## ⚠️ Challenges & Solutions

**Handling Duplicate Data**
Used surrogate keys to maintain uniqueness across records

**Snapshot Errors (Timestamp Issues)**
Standardized timestamp formats to ensure proper change tracking

**Data Integrity Issues**
Applied relationship tests to maintain consistency across tables

**Unwanted Files in Repository**
Used `.gitignore` to remove venv and local files from version control

---

## 🚀 Commands Used

```bash
dbt run
dbt test
dbt snapshot
dbt deps
dbt docs generate
dbt docs serve
```

---

## 📈 Why This Project Matters

This project demonstrates how to build a production-style data pipeline focusing on data reliability, scalability, and maintainability. It highlights best practices like modular transformations, automated testing, and documentation, which are essential in modern data engineering workflows.

---

## 📌 Conclusion

The pipeline successfully transforms raw data into structured, high-quality datasets ready for analytics. By leveraging DBT and Snowflake, it ensures efficient data processing, strong validation, and historical tracking—making it suitable for real-world analytical use cases.

---

## 📎 Future Improvements

* Add orchestration (Airflow)
* Implement CI/CD for DBT workflows
* Optimize using incremental models
* Build dashboards for insights (Power BI / Tableau)

---
