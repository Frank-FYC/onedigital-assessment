 PYTHON DATASETS:
Python Coding Challenge:

You are working with data that has been loaded into a Bronze layer (raw data).

Before it moves to the next stage, you need to clean, validate, and deduplicate the data using Python.

Your Task:

Complete the following Python function.

Requirements

Your function must:

1. Validate records

Keep only records where:

· customer_id exists (not None)

· email is valid (contains "@")

· updated_at is a valid timestamp

2. Normalize data

· Convert email → lowercase

3. Deduplicate

If multiple records exist for the same customer_id:

· Keep the most recent based on updated_at

4. Idempotency

· Skip any record where customer_id is already in processed_ids

5. Return cleaned data

Return a list of dictionaries in this format:

# This represents raw data coming from the Bronze layer
records = [
    {"customer_id": "1", "email": "A@EXAMPLE.com", "updated_at": "2024-01-01T10:00:00Z"},
    {"customer_id": "1", "email": "a@example.com", "updated_at": "2024-02-01T10:00:00Z"},
    {"customer_id": "2", "email": "INVALID_EMAIL", "updated_at": "2024-01-10T12:00:00Z"},
    {"customer_id": "3", "email": "valid@test.com", "updated_at": None},
    {"customer_id": None, "email": "missing@id.com", "updated_at": "2024-01-01T10:00:00Z"},
    {"customer_id": "4", "email": "user@test.com", "updated_at": "bad_timestamp"},
    {"customer_id": "5", "email": "good@email.com", "updated_at": "2024-01-15T09:00:00Z"}
]


*Already Processed IDs (idempotency) â€“ these IDs have already been processed and should be skipped. 

# Already processed customers (skip these)
processed_ids = {"5"}


*Complete the following Function: 

from datetime import datetime

def clean_customers(records, processed_ids):
    # Write your solution here
    pass