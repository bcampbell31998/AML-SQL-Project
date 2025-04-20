-- Flag high-value transactions over $10,000
SELECT 
    t.transaction_id,
    c.name,
    t.amount,
    t.transaction_date,
    t.transaction_type
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
WHERE t.amount > 10000;