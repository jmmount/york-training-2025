# Mini-Data Warehouse Project
An OLTP to OLAP for data analysis that cleans, transforms and integrates the data into a snowflake schema-based data warehouse and produces both data marts and data cubes aligned to various departments. This application uses Docker containers and a SQL database to store processed data and generate reports using Python, Pandas, and Matplotlib.

### ERD Snowflake Design
[view the erd](https://dbdesigner.page.link/n5oE6BfTfrefL7bj6)

## Installation
1. Activate the virtual environment in Jupyter Notebook
2. `pip3 install -r requirements.txt`
2. `chmod +x setup.sh` to allow the shell scripts to run
3. `./setup.sh` to run the shell scripts
4. `docker-compose up -d` to run the docker container in detached mode

## How to run the project
Run the Jupyter Notebook Codeblocks from the modularized files in the following order:
1. oltp.ipynb
2. csv_pipe.ipynb
3. warehouse_mapping.ipynb
4. olap.ipynb
5. datamarts.ipynb
6. visualizations.ipynb