# Data Warehouse and Analytics Project 

A compact end-to-end data warehousing and analytics example built with Microsoft SQL Server and Python.
This repository demonstrates how to move data from source CSVs into a data warehouse, clean and integrate data, run analytics with SQL, and create interactive visualizations with Plotly.

## Project Overview
The goal is to:
- Import raw data from two source systems (ERP + CRM) provided as CSV files.
- Clean and fix data-quality issues.
- Integrate data into a single analytical model (a simple data warehouse) in SQL Server.
- Produce SQL-based analytics for business insights, such as:
  - **Customer Behavior**
  - **Product PErformance**
  - **Sales Trends**
- Create interactive visualizations with Python.

## Tech stack
- **Microsoft SQL Server**: creation of the data warehouse, staging, explorative data analysis, advanced data analysis
- **Python** for interactive visualizations by utilizing libraries such as **Plolty**, **Pandas**.
- **Jupyter** notebooks or .py scripts for development


## Data architecture
### Data sources
- `erp.csv` — transactional sales and inventory data (ERP)
- `crm.csv` — customer records and interactions (CRM)
  
The data architecture follows the **Medallion Architecture** with three layers:
- **Bronze (Raw)** — Ingest raw CSV files into staging or raw bronze tables with minimal transformation. Keep original records for lineage and reprocessing.
- **Silver (Cleansed / Enriched)** — Clean, standardize, deduplicate and enrich data; validate schema and fix data-quality issues. This layer supports standard analytical queries and lightweight aggregations.
- **Gold (Curated / Business-Ready)** — Final curated tables and aggregates optimized for reporting and dashboards (e.g., dimensional star schema: fact `sales`, dims `customer`, `product`, `date`).

![sql-data-arch](https://github.com/user-attachments/assets/b0b5a327-cd07-4902-a9fc-d13976b7892d)

## Repository Structure 
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project architecture details
│   ├── sql-data-arch.jpg               # Data Archiceture
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│   ├── datavis/                        # Scripts of  Data Visualizations
│   ├── data-analysis/                   # Scripts of Data Analysis
│
├── README.md                           # Project overview and instructions
└── LICENSE                             # License information for the repository
```

## License
MIT 
