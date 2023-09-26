-- Create Database
CREATE DATABASE db_email;

-- Create Table
CREATE TABLE email_list (
  email VARCHAR(255)
);

-- Insert values
INSERT INTO email_list (email) VALUES
  ('dhila@gmail.com'),
  ('fiqa@yahoo.co.id'),
  ('siti@gmail.com'),
  ('joko@gmail.com'),
  ('fiqa@gmail.com'),
  ('umar@gmail.com'),
  ('joko@gmail.com'),
  ('fiqa@yahoo.co.id');

-- Answer :
SELECT email
FROM email_list
GROUP BY email
HAVING COUNT(*) > 1;
