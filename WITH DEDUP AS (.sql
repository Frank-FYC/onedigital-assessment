WITH DEDUP AS (
    SELECT 
        customer_id,
        email,
        IFNULL(updated_at, '1900-01-01') AS updated_at,
        name,
        ROW_NUMBER() OVER (PARTITION BY email ORDER BY updated_at ASC) AS rn
    FROM 
        your_table
),
DEDUPPED AS (
    SELECT 
        customer_id,
        email,
        updated_at,
        name
    FROM 
        DEDUP
    WHERE 
        rn = 1
),
LOWERCASE AS (
    SELECT 
        customer_id,
        LOWER(email) AS email,
        updated_at,
        name
    FROM 
        DEDUPPED
),
VALID_EMAIL AS (
    SELECT 
        customer_id,
        email,
        updated_at,
        name
    FROM 
        LOWERCASE
    WHERE 
        email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$' //I remember to use regex, but not the syntax here, its a little more expansive and permissive than what it ought to be, i.e. valid email companies such as .com or @gmail etc... less freeform.
), valid_name AS (
    SELECT 
        customer_id,
        email,
        updated_at,
        name
    FROM 
        VALID_EMAIL
    WHERE 
        name IS NOT NULL AND name != ''
)
SELECT 
    customer_id,
    email,
    updated_at,
    name
FROM 
    valid_name;