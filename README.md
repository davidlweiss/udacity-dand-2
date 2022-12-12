I completed this project as part of Udacity's Data Architecture Nanodegree -- https://www.udacity.com/course/data-architect-nanodegree--nd038

The goal of the project was to design and implement a lightweight data warehouse in Snowflake utilizing data from Yelp and Climatic data from the NOAA. 

The project had multiple components: 

1. Staging
- Parse and upload raw json YELP data into Snowflake using CLI snowsql. 

2. ODS 
- Design ERD in Lucidchart with appropriate data types, key constraints, and cardinality
- Transform JSON data into tables using SQL within Snowflake

3. DWH
- Design Star Schema data model for reporting/analysis
- Transform tables from ODS step into tables in DWH using Star Schema data model. 
