SQL DATASETS:
SQL Coding Challenge: Bronze → Silver Transformation

Question

You have messy customer data in Bronze:

· duplicates

· inconsistent casing

· null values

Show how you’d transform this into clean Silver data.

bronze_customers

customer_id | email              | updated_at           | name
--------------------------------------------------------------
1           | A@EXAMPLE.COM      | 2024-01-01T10:00:00Z | John
1           | a@example.com      | 2024-02-01T10:00:00Z | John
2           | INVALID_EMAIL      | 2024-01-10T12:00:00Z | Alice
3           | test@company.com   | NULL                 | Bob