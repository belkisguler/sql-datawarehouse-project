# Data Warehouse and Analtytics Project 

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

## Project Workflow
```
[CSV files (ERP, CRM)] --> [Staging tables in SQL Server] --> [Transformation / Cleansing SQL] --> [DW]
                                                             |
                                                             v
                                                  [SQL analytics queries]
                                                             |
                                                             v
                                               [Python scripts / Notebooks + Plotly visualizations]
```

## Data architecture
The data architecture follows the **Medallion Architecture** with three layers:
- **Bronze (Raw)** — Ingest raw CSV files into staging or raw bronze tables with minimal transformation. Keep original records for lineage and reprocessing.
- **Silver (Cleansed / Enriched)** — Clean, standardize, deduplicate and enrich data; validate schema and fix data-quality issues. This layer supports standard analytical queries and lightweight aggregations.
- **Gold (Curated / Business-Ready)** — Final curated tables and aggregates optimized for reporting and dashboards (e.g., dimensional star schema: fact `sales`, dims `customer`, `product`, `date`).

## Data sources
- `erp.csv` — transactional sales and inventory data (ERP)
- `crm.csv` — customer records and interactions (CRM)

## Repository Structure 
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project
```

## License
MIT 
