# Task 6: E-commerce Database Subqueries and Nested Queries

This repository contains an SQL script (`e_commerce_db_task6.sql`) focused on leveraging subqueries and nested queries to perform advanced data retrieval and analysis 


## Objective

The main goal of this task is to gain a clear understanding and hands-on experience in using subqueries effectively by:
* Implementing **scalar subqueries** in `SELECT` and `WHERE` clauses to return a single value.
* Utilizing **correlated subqueries** where the inner query depends on the outer query for its execution.
* Employing subqueries within **`IN`**, **`EXISTS`**, and **`=`** operators for conditional filtering.
* Using subqueries in the **`FROM` clause** to create derived tables for more complex aggregations and filtering.


## Contents

* `e_commerce_db_task6.sql`: The primary SQL script containing various subqueries and nested query examples.



## Key Demonstrations

The script illustrates a range of subquery applications, enabling more complex data analysis:

* **Scalar Subquery in `SELECT`**: Demonstrates how to display a single calculated value (e.g., the overall average product price, rounded to two decimal places) alongside individual product details.
* **Scalar Subquery in `WHERE`**: Shows how to filter records based on a single calculated value (e.g., finding products priced above the overall average).
* **Subquery with `IN`**: Illustrates how to select records where a column's value matches any value in a list returned by a subquery (e.g., finding customers who have placed at least one order).
* **Correlated Subquery with `EXISTS`**: Provides an example of checking for the existence of related records in another table for each row in the outer query, often used as an efficient alternative to `IN` for existence checks.
* **Subquery in `FROM` Clause (Derived Table)**: Explains how to use the result of a subquery as a temporary, aliased table in the main query, allowing for multi-step aggregations and comparisons (e.g., identifying customers whose average order total exceeds the overall average order total, with the customer's average rounded).



## How to Use

1.  **Prerequisite**: Ensure your E-commerce database schema and sample data are already set up and populated in your PostgreSQL environment. You should have completed:
    * [Task 1 - Database Setup and Schema Design](https://github.com/sanjay-it-is/e-commerce-db)
    * [Task 2 - Data Insertion and Handling Nulls](https://github.com/sanjay-it-is/e-commerce-db_task2)
    * [Task 3 - Basic SELECT Queries](https://github.com/sanjay-it-is/e-commerce-db_task3)
    * [Task 4 - Aggregate Functions and Grouping](https://github.com/sanjay-it-is/e-commerce-db_task4)
    * [Task 5 - SQL Joins](https://github.com/sanjay-it-is/e-commerce-db_task5)
2.  **Connect to your Database**: Open your preferred PostgreSQL client (e.g., `psql` command line, pgAdmin, DBeaver).
3.  **Execute the Script**: You can run the `e_commerce_db_task6.sql` file against your `e_commerce_db` database.

    ```bash
    -- Example using psql:
    psql -U your_username -d e_commerce_db -f e_commerce_db_task6.sql
    ```
    Alternatively, you can copy and paste individual queries or the entire script into your client and execute them to see the results.


## 📝 Outcome

By working through this script, you will develop **advanced query logic skills**, gaining proficiency in structuring complex SQL queries using subqueries and nested logic for deeper data analysis and retrieval.
