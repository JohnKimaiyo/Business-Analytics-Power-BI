-- Identify duplicate rows based on all columns
WITH DuplicateCTE AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY employee_id ORDER BY hire_date DESC) AS RowNum
    FROM employees
)
DELETE FROM DuplicateCTE WHERE RowNum > 1;



-- Replace NULL email values with a default email
UPDATE employees
SET email = 'unknown@example.com'
WHERE email IS NULL;

-- Remove rows with missing phone numbers
DELETE FROM employees
WHERE phone_number IS NULL;



-- Convert hire_date to a DATE data type
ALTER TABLE employees
ALTER COLUMN hire_date DATE;


-- Remove employees with salary greater than $100,000
DELETE FROM employees
WHERE salary > 100000;


-- Convert first_name and last_name to uppercase
UPDATE employees
SET first_name = UPPER(first_name),
    last_name = UPPER(last_name);


-- Remove leading and trailing whitespaces from email addresses
UPDATE employees
SET email = TRIM(BOTH FROM email);
