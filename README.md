# Essential SQL Queries and Usage Guide

**Author:** Ogechukwu Ezenwa  
**Date:** October 7, 2025  
**Course:** IDS 706 – Data Engineering Systems  
**Assignment:** Week 6 Mini-Assignment-Introduction to Databases

---

# Overview

This repository contains a collection of useful SQL queries for various database operations and scenarios. The queries are organized by topic and are intended to help with basic data analysis, CRUDE steps, and database management tasks.

## Usage

1. Clone this repository:
    ```bash
    git clone <repository-url>
    ```
2. This project uses a devcontainer to provide a consistent development 
environment. When prompted, select “Reopen in Container.”  
    - All required extensions and packages for database access are pre-installed and configured automatically. 
    - By reopening the project in a compatible editor like VS Code and selecting “Reopen in Container,” you’ll have immediate access to all necessary tools—such as database drivers, CLI utilities, and VS Code extensions ensuring a smooth and reliable setup for development and analysis.
3. Browse the `sql_queries` directory for categorized SQL scripts.
4. Copy and adapt queries as needed for your database.

## Requirements

- A SQL-compatible database (e.g., MySQL, PostgreSQL, SQLite, SQL Server)
- Access to a database client or management tool
- If sqlite3 isn't working on the terminal, use the code below.

    ```bash
    install sudo apt update && sudo apt install -y sqlite3
    ```

## Dataset Information

**Table Name:** `university_rankings`  
**Columns:**  
- `world_rank` – Global ranking of the institution  
- `institution` – University name  
- `country` – Country of the institution  
- `national_rank` – Rank within the country  
- `quality_of_education`, `alumni_employment`, `quality_of_faculty`, `publications`, `influence`, `citations`, `broad_impact`, `patents` – Various academic and research performance metrics  
- `score` – Overall performance score  
- `year` – Year of ranking  

**Total Records Initially:** `2200`

## Features

- CRUD operations (Create, Read, Update, Delete) examples
- Basic analysis queries (COUNT, MAX, MIN, SUM)

### CRUD Operations

**Create**
- Inserted a new record for Duke Tech (USA) in 2014 with the following details:  
  - World Rank: 350  
  - Score: 60.5  

**Read**
- Displayed the first 10 rows of the dataset to inspect data values and structure.  
- Retrieved all column names using PRAGMA to understand the table schema.  
- Verified that the Duke Tech record was successfully inserted.  
- Counted how many Japanese universities appeared in the global top 200 in 2013.  

**Update**
- Increased University of Oxford’s score by +1.2 points in 2014.  
- Queried the table again to confirm the updated score.  

**Delete**
- Deleted all universities from 2015 with a score below 45.  
    - There were 556 universities deleted based on the threshold
- Checked the total number of rows after deletion to confirm successful removal.  


### Basic Analysis

**Dataset Size & Structure**
- Identified all unique institutions in the rankings.  

**Ranking Analysis**
- Found the institution with the best world rank (rank = 1).  
- Calculated the average world rank across all universities.  

**Scores & Quality Metrics**
- Computed the maximum, minimum, and average scores across all records.  
- Determined which country had the highest total score across its universities.  

**Yearly Trends**
- Calculated the average and total scores per year to analyze changes over time.  
- Determined how many universities were ranked in each year.  

**Top Performers**
- Listed the top 20 universities based on their quality of education scores.  

## Insights from the Data

- **Country Dominance:** The USA leads global rankings with the highest total score, followed by the UK and Japan.  
- **Top Performers:** Harvard University consistently ranks highest globally.  
- **Yearly Trends:** There was a dramatic increase in ranked universities in 2014, suggesting dataset expansion or inclusion of more institutions.  
- **Average Scores:** Despite changes in dataset size, average scores remain relatively stable around 50, indicating consistency in university performance metrics.  
- **Data Irregularities:** Some universities have unusually high quality_of_education values (367), which may be placeholders or data entry anomalies.  
- **Japanese Universities:** Only 6 universities appeared in the global Top 200 in 2013, highlighting regional differences in global competitiveness.




