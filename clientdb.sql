-- Drop a database
drop database if exists ClientDB;

-- Create a database
create database ClientDB ;

-- Drop the client_credentials table if it already exists
drop table if exists client_credentials;

-- Create the client_credentials table (an empty table)
create table client_credentials (
                                    id SERIAL PRIMARY KEY,
                                    clientname varchar(100),
                                    email varchar(100),
                                    Password varchar(100),
                                    created_on date
);

-- Clear the data in this table while keeping the table in database to avoid repeated insertion of same data.
truncate client_credentials;

-- Load data from a csv file into the table
copy client_credentials (id, clientname, email, Password, created_on)
    from '/Users/VeraLiu_1/Downloads/MOCK_DATA_Cleaned.csv'
    delimiter ','
    csv header;

-- test whether the data has been successfully loaded into table
select * from client_credentials limit 10;
select count(id) from client_credentials ;

-- environment
select version();

-- SQL script used to create the sql user credentials
-- Connect to the PostgreSQL database
\c clientdb;

-- Create a new user with a password
CREATE USER peteryang WITH PASSWORD 'password1234';

-- Grant privileges to the user
-- For example, to grant all privileges on a specific database:
GRANT ALL PRIVILEGES ON DATABASE ClientDB TO peteryang;

-- Alternatively, grant specific privileges to the user on a particular schema or table
-- GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO your_username;

-- To make sure the user can connect and create tables:
ALTER USER peteryang WITH CREATEDB;





