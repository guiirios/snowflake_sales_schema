# snowflake_sales_schema
📌 Overview  This project demonstrates the design and implementation of a Snowflake Schema for a sales data warehouse using SQL. The model follows dimensional modeling best practices, separating descriptive data into dimensions and transactional data into a fact table.
🧱 Schema Design

The schema consists of:

Dimensions

dim_customer – customer details and demographics

dim_vendor – vendor/seller information

dim_product – product information

dim_category – product categories (normalized)

dim_location – geographical data reused by customers and vendors

dim_date – time dimension for sales analysis

Fact Table

fact_sales – stores measurable business events, including:

quantity sold

total sale amount

This structure enables efficient analytical queries while reducing data redundancy through normalized dimensions.

🎯 Purpose

The goal of this project is to:

Practice data warehouse modeling

Understand the difference between star and snowflake schemas

Apply fact vs dimension separation

Build a schema suitable for BI and analytical queries

🛠 Technologies

SQL (MySQL-compatible)

Dimensional modeling concepts (Kimball-style)
