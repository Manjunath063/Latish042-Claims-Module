-- Create database (only runs if not already created)
-- NOTE: This part only works outside the DB or as part of entrypoint/init logic.
-- If you already have a Docker volume for your DB, the DB may already exist.

-- Uncomment this if running manually in psql (not necessary for Docker init.sql)
-- CREATE DATABASE claims_db;

-- Connect to the database
\c claims_db;

-- Create the claims table
CREATE TABLE IF NOT EXISTS claims (
    id TEXT PRIMARY KEY,
    employee_id VARCHAR(20),
    claim_type VARCHAR(20),
    from_date DATE,
    to_date DATE,
    from_location VARCHAR(50),
    to_location VARCHAR(50),
    hospital_name VARCHAR(50),
    amount NUMERIC,
    description TEXT,
    status VARCHAR(20),
    submitted_date DATE
);

