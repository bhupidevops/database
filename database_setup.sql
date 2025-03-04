-- Create the database
CREATE DATABASE IF NOT EXISTS BankingSystem;
USE BankingSystem;

-- Create the admin user and grant privileges
CREATE USER 'bankadmin'@'%' IDENTIFIED BY 'SecurePassword123!';
GRANT ALL PRIVILEGES ON BankingSystem.* TO 'bankadmin'@'%';
FLUSH PRIVILEGES;

-- Create the application user with limited privileges
CREATE USER 'bankapp'@'%' IDENTIFIED BY 'AppPassword123!';
GRANT SELECT, INSERT, UPDATE, DELETE ON BankingSystem.* TO 'bankapp'@'%';
FLUSH PRIVILEGES;

-- Create Accounts Table
CREATE TABLE IF NOT EXISTS Accounts (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    AccountNumber VARCHAR(20) UNIQUE NOT NULL,
    AccountHolderName VARCHAR(100) NOT NULL,
    Balance DECIMAL(15, 2) NOT NULL DEFAULT 0.00,
    Status ENUM('ACTIVE', 'CLOSED') NOT NULL DEFAULT 'ACTIVE',
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    LastInterestDate DATE
);

-- Create Transactions Table
CREATE TABLE IF NOT EXISTS Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    AccountID INT NOT NULL,
    TransactionType ENUM('DEPOSIT', 'WITHDRAW') NOT NULL,
    Amount DECIMAL(15, 2) NOT NULL,
    TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

-- Create Audit Log Table
CREATE TABLE IF NOT EXISTS AuditLog (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    Action VARCHAR(50) NOT NULL,
    Description TEXT,
    PerformedBy VARCHAR(100),
    PerformedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
