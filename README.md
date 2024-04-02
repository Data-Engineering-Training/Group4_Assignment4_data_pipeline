# Group 4 - Assignment 4 DataPipeline

## Data Pipeline to ingest customer records from csv files into a database (postgres for this case)


## Table of Contents
  -  [Overview](#overview)
  -  [Usage](#Usage)
  -  [Group Members](#GroupMembers)


# Overview
This assignment focus on generating 100k records for 10 companies using the faker library and subsequently inserting the data into a postgres database using python.

# Usage  

uncomment the first two cells within the Group4_data_gen_to_db.ipynb file and run the cells to install the libraries Faker and sqlalchemy if not already installed on your machine.

Database credentials - Edit details in the db params within the Group4_data_gen_to_db.ipynb file

 db_params = {
        'dbname': 'postgres',
        'user': 'postgres',
        'password': 'postgres',
        'host': 'localhost',
        'port': '5432'
    } 
 
Replace the table name with the table in your database above

table_name = 'company_customers'

Run the third cell to generate the csv files with Faker and insert records to the database.

# GroupMembers

- AUGUSTINE AYEKOR
- MOHAMMED SOGBE
- HANNAH MENSAH
- OLIVE NUER
