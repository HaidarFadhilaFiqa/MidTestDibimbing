-- Create Database
CREATE DATABASE new_db;

-- Create Table
CREATE TABLE input_table (
  id serial PRIMARY KEY,
  num integer
);

-- Insert values
INSERT INTO input_table (num) VALUES
  (1),
  (2),
  (2),
  (3),
  (3),
  (3),
  (4),
  (4),
  (4),
  (4);

-- Answer :
WITH lag_lead AS (
  SELECT
    id,
    num,
    LAG(num) OVER (ORDER BY id) AS prev_num,
    LEAD(num) OVER (ORDER BY id) AS next_num
  FROM input_table
)

SELECT DISTINCT num
FROM lag_lead
WHERE num = prev_num AND num = next_num
ORDER BY num;
