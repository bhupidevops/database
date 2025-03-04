USE BankingSystem;

-- Insert sample accounts
INSERT INTO Accounts (AccountNumber, AccountHolderName, Balance, Status)
VALUES
    ('1001', 'John Doe', 5000.00, 'ACTIVE'),
    ('1002', 'Jane Smith', 10000.00, 'ACTIVE'),
    ('1003', 'Alice Johnson', 7500.00, 'ACTIVE');

-- Insert sample transactions
INSERT INTO Transactions (AccountID, TransactionType, Amount)
VALUES
    (1, 'DEPOSIT', 1000.00),
    (1, 'WITHDRAW', 500.00),
    (2, 'DEPOSIT', 2000.00),
    (3, 'WITHDRAW', 1000.00);

-- Insert sample audit logs
INSERT INTO AuditLog (Action, Description, PerformedBy)
VALUES
    ('ACCOUNT_CREATED', 'Account 1001 created for John Doe', 'bankadmin'),
    ('TRANSACTION', 'Deposit of 1000.00 to Account 1001', 'bankapp'),
    ('TRANSACTION', 'Withdrawal of 500.00 from Account 1001', 'bankapp');
