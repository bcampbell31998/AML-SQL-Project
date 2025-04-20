-- Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    risk_level VARCHAR(20)
);

-- Create Transactions Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    transaction_date DATE,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert Sample Customers
INSERT INTO customers VALUES 
(1, 'Alice Smith', 'USA', 'Low'),
(2, 'Bob Jones', 'USA', 'Medium'),
(3, 'Carlos Mendez', 'Colombia', 'High'),
(4, 'Diana Patel', 'India', 'High');

-- Insert Sample Transactions
INSERT INTO transactions VALUES 
(1001, 1, '2025-04-01', 9500.00, 'Deposit'),
(1002, 2, '2025-04-02', 15000.00, 'Withdrawal'),
(1003, 3, '2025-04-03', 9999.00, 'Deposit'),
(1004, 3, '2025-04-03', 9500.00, 'Deposit'),
(1005, 3, '2025-04-03', 8900.00, 'Deposit'),
(1006, 4, '2025-04-04', 12000.00, 'Withdrawal');

-- Suspicious Activity Reports (SARs)
CREATE TABLE sars (
    sar_id INT PRIMARY KEY,
    customer_id INT,
    transaction_id INT,
    alert_reason VARCHAR(255),
    severity_level VARCHAR(20),
    flagged_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
);

-- Insert SARs
INSERT INTO sars VALUES
(1, 3, 1004, 'Multiple deposits just under threshold', 'High', '2025-04-03'),
(2, 3, 1005, 'Structured transactions', 'High', '2025-04-03'),
(3, 4, 1006, 'High-risk withdrawal over $10,000', 'Medium', '2025-04-04');