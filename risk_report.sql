-- Generate customer risk summary
SELECT 
    c.customer_id,
    c.name,
    c.risk_level,
    COUNT(t.transaction_id) AS total_transactions,
    SUM(t.amount) AS total_amount
FROM customers c
LEFT JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.name, c.risk_level;