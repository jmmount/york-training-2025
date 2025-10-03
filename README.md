# york-training-2025
Projects related to training in the York Solutions Emerging Talent Program between August and November 2025.

### ERD
[view the erd](https://dbdesigner.page.link/n5oE6BfTfrefL7bj6)

## Installation
1. `pip3 install -r requirements.txt`
2. `chmod +x setup.sh`
3. `./setup.sh`

## Mini Data Warehouse Project: Online Retail Sales Analytics
### Project Overview
You will design and implement a data warehouse solution for a fictional online retail company. The goal is to integrate sales, customer, and product data from multiple sources into a centralized warehouse. The warehouse will support business intelligence use cases like analyzing revenue trends, customer behavior, and product performance.

### Project Components & Learning Targets
#### Source Data
Use a relational database to simulate an OLTP system with:
- orders 
- customers 
- products

#### Explain how this differs from a data warehouse
- Include problem data (nulls, unrealistic, etc.)

#### Staging Area
- Export OLTP into csv We want to simulate pushing our data streams to a data lake but we will maintain those files locally instead of the cloud.

#### Data Warehouse Schema
- Design a snowflake schema for the data warehouse.

#### ETL Pipelines
- Build an ETL pipeline using Python with pandas to fill the warehouse schema (csv to Python to postgreSQL)

#### OLAP Cubes & Queries
- Define a variety of cubes and their queries. These should be diverse and cover different types of scenarios. We cannot use OracleDB or SSAS-style cubes so we will use multiple-join SQL commands in their place.

#### Data Marts
- Create departmental data marts. You may need to expand the scope of your data to be able to separate them by departments.

#### Visualization & Reporting
- Build dashboards in Matplotlib. These should be diverse and cover different types of scenarios.

#### Documentation
- Use a data modeling tool to create ER diagrams. 
- Document ETL pipeline steps and schema design decisions.