from datetime import datetime

processed_ids = []
processed_ids.append(5)
final_ids = {}

def clean_customers(records, processed_ids):
    for record in records:
        if record["customer_id"] not in processed_ids:
            # Process the record
            pass
        elif record["customer_id"] != "":
            # Process the record
            pass    
        elif record["customer_id"].upper() == "NULL":
            # Process the record
            pass
        elif record["customer_id"].upper() == "NONE":
            # Process the record
            pass
        elif record["customer_id"].upper() == "N/A":
            # Process the record
            pass   
        elif record["email"].regex.search("@"):
            # Process the record
            pass
        elif record["timestamp"].regex.search("\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z"):
            # Process the record
            pass
        final_ids[record["customer_id"]] = record
        final_ids[record["email"].lower()] = record
        final_ids[record["timestamp"]] = record
-- to address deduplication, the solution would be to create a unique row_num for each customer_id based on updated_at, similar to sql row_numer() then select teh latest value based on updated_at
    