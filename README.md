# Employee Reporting DB ΓÇö Solution

This repository contains the **correct implementation** for the
"Index Order Matters" challenge.

The original project had a composite index with incorrect column order,
which prevented the database from efficiently using the index.

This solution fixes the issue by redesigning the index so that
the column order matches the query filter pattern.

---

# Setup Instructions

Clone the repository

git clone <solution-repo-url>
cd employee-reporting-db-solution

Create database

CREATE DATABASE employee_reporting;
\c employee_reporting

Run schema

\i db/schema.sql

Load sample data

\i db/sample_data.sql

Run queries

\i db/queries.sql

Apply the optimized index

\i db/fixed_indexes.sql

Run the queries again with EXPLAIN ANALYZE to observe the improvement.

---

# What Was Wrong

Original index:

CREATE INDEX idx_salary_department ON employees(salary, department);

Problem:

The query filters by **department first**, then salary.

Because the index started with salary,
the database optimizer could not efficiently use the index.

---

# Correct Fix

Correct index:

CREATE INDEX idx_department_salary ON employees(department, salary);

This allows the database to follow the **Left-Most Prefix Rule**
and efficiently filter rows.
