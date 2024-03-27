-- BANK DATEBASE SCENARIO
-- AUTHOR: Adegbehingbe Oluwakorede Joseph
-- 2024

-- Create Database
DROP DATABASE IF EXISTS mybank_db;
CREATE DATABASE mybank_db;

-- Use database
USE mybank_db;

-- Create customers table
CREATE TABLE Customers(
	customer_id INT PRIMARY KEY auto_increment,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(2) NOT NULL
);

-- Create branches table
CREATE TABLE Branches(
	branch_id INT PRIMARY KEY auto_increment,
    branch_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(2) NOT NULL
);

-- Create accounts table
CREATE TABLE Accounts(
	account_id INT PRIMARY KEY auto_increment,
    customer_id INT NOT NULL,
    branch_id INT NOT NULL,
    account_type ENUM('Checking', 'Savings', 'Credit Card') NOT NULL DEFAULT 'Savings',
    balance FLOAT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branches (branch_id)
);

-- Create transactions table
CREATE TABLE Transactions(
	transaction_id INT PRIMARY KEY auto_increment,
    account_id INT NOT NULL,
    transaction_date DATE NOT NULL,
    amount INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Accounts (account_id)
);

-- Populate customers table
INSERT INTO Customers (first_name, last_name, city, state) VALUES
('John', 'Doe', 'New York', 'NY'),
('Jane', 'Smith', 'Los Angeles', 'CA'),
('Michael', 'Brown', 'Los Angeles', 'CA'),
('Emily', 'Johnson', 'Houston', 'TX'),
('David', 'Williams', 'Phoenix', 'AZ'),
('Sarah', 'Jones', 'Philadelphia', 'PA'),
('Daniel', 'Miller', 'San Antonio', 'TX'),
('Jessica', 'Davis', 'San Diego', 'CA'),
('Christopher', 'Garcia', 'Dallas', 'TX'),
('Ashley', 'Rodriguez', 'San Jose', 'CA'),
('William', 'Wilson', 'Jacksonville', 'FL'),
('Jennifer', 'Lopez', 'Columbus', 'OH'),
('Andrew', 'Lewis', 'Charlotte', 'NC'),
('Elizabeth', 'Clark', 'Indianapolis', 'IN'),
('Matthew', 'Robinson', 'Fort Worth', 'TX'),
('Barbara', 'Walker', 'Los Angeles', 'CA'),
('Joseph', 'Scott', 'Baltimore', 'MD'),
('Stephanie', 'Nguyen', 'El Paso', 'TX'),
('Benjamin', 'Mitchell', 'Oklahoma City', 'OK'),
('Margaret', 'Hernandez', 'Las Vegas', 'NV'),
('Olivia', 'Peterson', 'Seattle', 'WA'),
('Noah', 'Garcia', 'Austin', 'TX'),
('Sophia', 'Miller', 'San Francisco', 'CA'),
('Mia', 'Moore', 'Chicago', 'IL'),
('Liam', 'Robinson', 'Atlanta', 'GA'),
('Ava', 'Gonzalez', 'Phoenix', 'AZ'),
('Ethan', 'Young', 'San Antonio', 'TX'),
('Isabella', 'Thomas', 'Dallas', 'TX'),
('Mason', 'Hall', 'San Diego', 'CA'),
('Evelyn', 'Nelson', 'Jacksonville', 'FL'),
('Benjamin', 'Allen', 'Columbus', 'OH'),
('Charlotte', 'King', 'Indianapolis', 'IN'),
('Aiden', 'Wright', 'Nashville', 'TN'),
('Amelia', 'Scott', 'Detroit', 'MI'),
('Logan', 'Clark', 'Washington D.C.', 'DC'),
('Sofia', 'Diaz', 'Baltimore', 'MD'),
('Elijah', 'Walker', 'El Paso', 'TX'),
('Abigail', 'Lopez', 'New York', 'NY'),
('James', 'Nguyen', 'Miami', 'FL'),
('Scarlett', 'Lee', 'Las Vegas', 'NV'),
('Caleb', 'Johnson', 'New York', 'NY'),
('Madison', 'Carter', 'Seattle', 'WA'),
('Jackson', 'Torres', 'Austin', 'TX'),
('Harper', 'Lewis', 'San Francisco', 'CA'),
('Aiden', 'Robinson', 'New York', 'NY'),
('Avery', 'Walker', 'Chicago', 'IL'),
('Wyatt', 'Garcia', 'Atlanta', 'GA'),
('Evelyn', 'Hernandez', 'San Antonio', 'TX'),
('Layla', 'Moore', 'Dallas', 'TX'),
('Carter', 'Young', 'San Diego', 'CA'),
('Penelope', 'Allen', 'Jacksonville', 'FL'),
('Ryan', 'King', 'Columbus', 'OH'),
('Chloe', 'Wright', 'Indianapolis', 'IN'),
('William', 'Scott', 'Nashville', 'TN'),
('Zoey', 'Clark', 'Detroit', 'MI'),
('Matthew', 'Diaz', 'Washington D.C.', 'DC'),
('Lily', 'Walker', 'Baltimore', 'MD'),
('Owen', 'Lopez', 'Boston', 'MA'),
('Riley', 'Nguyen', 'Miami', 'FL'),
('Charlotte', 'Lee', 'Las Vegas', 'NV'),
('Grayson', 'Johnson', 'Denver', 'CO');

-- Populate branches table
INSERT INTO Branches (branch_name, city, state) VALUES
('Main Branch', 'New York', 'NY'),
('West Coast Branch', 'Los Angeles', 'CA'),
('Central Branch', 'Chicago', 'IL'),
('South Branch', 'Houston', 'TX'),
('Southwest Branch', 'Phoenix', 'AZ'),
('East Coast Branch', 'Philadelphia', 'PA'),
('South Central Branch', 'San Antonio', 'TX'),
('Pacific Branch', 'San Diego', 'CA'),
('Sunbelt Branch', 'Dallas', 'TX'),
('Silicon Valley Branch', 'San Jose', 'CA'),
('Sunshine State Branch', 'Jacksonville', 'FL'),
('Midwestern Branch', 'Columbus', 'OH'),
('Southeast Branch', 'Charlotte', 'NC'),
('Hoosier Branch', 'Indianapolis', 'IN'),
('Lone Star Branch', 'Fort Worth', 'TX'),
('Bluff City Branch', 'Memphis', 'TN'),
('Charm City Branch', 'Baltimore', 'MD'),
('Sun Country Branch', 'El Paso', 'TX'),
('Sooner State Branch', 'Oklahoma City', 'OK'),
('Desert Branch', 'Las Vegas', 'NV');

-- Populate accounts table
INSERT INTO Accounts (customer_id, branch_id, account_type, balance) VALUES
(1, 1, 'Checking', 1000.00),
(2, 2, 'Savings', 5000.00),
(3, 3, 'Checking', 2500.00),
(4, 4, 'Savings', 8000.00),
(5, 5, 'Credit Card', 10000.00),
(1, 6, 'Savings', 3000.00),
(2, 7, 'Checking', 4200.00),
(3, 8, 'Credit Card', 5000.00),
(4, 9, 'Savings', 6500.00),
(5, 10, 'Checking', 1500.00),
(6, 1, 'Checking', 7800.00),
(7, 2, 'Savings', 2300.00),
(8, 3, 'Credit Card', 9000.00),
(9, 4, 'Savings', 4100.00),
(10, 5, 'Checking', 2000.00),
(11, 6, 'Savings', 5400.00),
(12, 7, 'Checking', 1900.00),
(13, 8, 'Credit Card', 7500.00),
(14, 9, 'Savings', 3800.00),
(15, 10, 'Checking', 1200.00),
(16, 10, 'Checking', 1500.00),
(17, 2, 'Savings', 2300.00),
(18, 3, 'Credit Card', 9000.00),
(19, 4, 'Savings', 4100.00),
(20, 5, 'Checking', 2000.00),
(21, 6, 'Savings', 5400.00),
(22, 7, 'Checking', 1900.00),
(23, 8, 'Credit Card', 7500.00),
(24, 9, 'Savings', 3800.00),
(25, 10, 'Checking', 1200.00),
(26, 10, 'Checking', 1200.00),
(27, 10, 'Checking', 1500.00),
(28, 3, 'Credit Card', 9000.00),
(29, 4, 'Savings', 4100.00),
(30, 4, 'Checking', 4800.00),
(30, 1, 'Savings', 4800.00);

-- Populate transactions table
INSERT INTO Transactions (account_id, transaction_date, amount) VALUES
(1, '2024-03-20', 200.00),
(2, '2024-03-21', -150.00),
(3, '2024-03-22', 50.00),
(4, '2024-03-20', 100.00),
(5, '2024-03-23', -200.00),
(1, '2024-03-25', -50.00),
(2, '2024-03-25', 75.00),
(3, '2024-03-25', 120.00),
(4, '2024-03-25', -40.00),
(5, '2024-03-25', 150.00),
(6, '2024-03-18', 300.00),
(7, '2024-03-19', -100.00),
(8, '2024-03-21', 75.00),
(9, '2024-03-17', 250.00),
(10, '2024-03-24', -350.00),
(6, '2024-03-25', -120.00),
(7, '2024-03-25', 80.00),
(8, '2024-03-25', 100.00),
(9, '2024-03-25', -180.00),
(10, '2024-03-25', 220.00),
(15, '2024-03-22', 450.00),
(18, '2024-03-24', -175.00),
(3, '2024-03-20', 600.00),
(6, '2024-03-21', -250.00),
(5, '2024-03-25', 150.00),
(6, '2024-03-18', 300.00),
(7, '2024-03-19', -100.00),
(8, '2024-03-21', 75.00),
(9, '2024-03-17', 250.00),
(10, '2024-03-24', -350.00),
(6, '2024-03-25', -120.00),
(7, '2024-03-25', 80.00),
(8, '2024-03-25', 100.00);

-- ----------------------------------------------
-- DATA ANALYSIS
-- ----------------------------------------------

-- 1. What are the names of all the customers who live in New York? 
SELECT CONCAT(first_name, ' ', last_name) as 'Full name'
FROM Customers
WHERE city = 'New York';

-- 2. What is the total number of accounts in the Accounts table? 
SELECT COUNT(account_id) as 'Total accounts'
FROM Accounts;
 
-- 3. What is the total balance of all checking accounts? 
SELECT SUM(balance) as 'Sum of checking account balances'
FROM Accounts
WHERE account_type = 'Checking';

-- 4. What is the total balance of all accounts associated with customers who live in Los Angeles? 
SELECT SUM(a.balance) as 'Total balance of accounts associated wuth customers in LA'
FROM Customers as c
INNER JOIN Accounts as a on c.customer_id = a.customer_id
WHERE c.city = 'Los Angeles';

-- 5. Which branch has the highest average account balance? 
SELECT b.branch_name, AVG(a.balance) as 'Average account balance'
FROM Branches as b
INNER JOIN Accounts as a on b.branch_id=a.branch_id
GROUP BY b.branch_id
ORDER BY AVG(a.balance) DESC
LIMIT 1;
 
-- 6. Which customer has the highest current balance in their accounts?
SELECT c.first_name, c.last_name, a.balance
FROM Customers as c
INNER JOIN Accounts as a on c.customer_id=a.customer_id
ORDER BY a.balance DESC
LIMIT 1;

-- 7. Which customer has made the most transactions in the Transactions table?
SELECT c.first_name, c.last_name, COUNT(t.account_id) as 'Number of transactions made'
FROM Transactions as t
INNER JOIN Accounts as a on t.account_id=a.account_id
INNER JOIN Customers as c on a.customer_id=c.customer_id
GROUP BY t.account_id
ORDER BY COUNT(t.account_id) DESC
LIMIT 1;
 
-- 8.Which branch has the highest total balance across all of its accounts? 
SELECT b.branch_name, SUM(a.balance) as 'Total balance across all accounts'
FROM Branches as b
INNER JOIN Accounts as a on b.branch_id=a.branch_id
GROUP BY b.branch_id 
ORDER BY SUM(a.balance) DESC
LIMIT 1;

-- 9. Which customer has the highest total balance across all of their accounts, including savings and checking accounts? 
SELECT c.first_name, c.last_name, SUM(a.balance) as 'Sum of balance across all accounts'
FROM Customers as c
INNER JOIN Accounts as a on c.customer_id=a.customer_id
GROUP BY c.customer_id
ORDER BY SUM(a.balance) DESC
LIMIT 1;

-- 10. Which branch has the highest number of transactions in the Transactions table? 
SELECT b.branch_name, COUNT(t.account_id) 'Number of transactions'
FROM Branches as b
INNER JOIN Accounts as a on b.branch_id=a.branch_id
INNER JOIN Transactions as t on a.account_id=t.account_id
GROUP BY t.account_id
ORDER BY COUNT(t.account_id) DESC
LIMIT 1;