# Welcome to The Crowd Funding ETL Mini Project!

# Crowd Funding ETL: 
For the ETL mini project, we have collaborated in a group of three team members and built an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After Transforming  the data, we created four CSV files and used the CSV file data to create an ERD and a table schema. Finally, we uploaded the CSV file data into a Postgres database.

# The Team / Contributors: 
    - Minh Phuong Nguyen
    - Pedro Azpurua
    - Andrew Fellowes

# Repository and Documents: 
- Resources Folder: 

    - Containing the initial two xlsx files  
        - crowdfunding.xlsx
        - contacts.xlsx
    
    - Additional four CSV files created throught the ETL Process Including: 
        - categories.csv
        - subcategories.csv
        - campaign.csv
        - contacts.csv

- .gitignore file

- Crowd_Funding_Schema_ERD.png --> File contains a visual representaiton of the final schema built on QuickDBD

- Crowd_Fudning_Sql_Schema_File1.sql --> This SQL File contains the actual Schema used on Postgress to create the data tables which where later manually uploaded with the CSV Files created throughout the analysis located in the Resources Folder.

- Crowd_Funding_Sql_Extra_Info.sql --> File contains the SQL Code to check all the four tables were loaded correctly and create one final Masterfile merging all the data tables together. FOr this to run, we need to run section by section.

- Results Folder:  BAsed on the Postgres Query listed above, a MAster FIle was created to demonstrate all the elements ran successfully. 



# Core Tasks: 
- Section 1: Creating the Category and Subcategory DataFrames
- Section 2: The Campaign DataFrame
- Section 3: Create the Contacts DataFrame
- Section 4: Create the Crowdfunding Database


# Section 1: Creating the Category and Subcategory DataFrames
1. 