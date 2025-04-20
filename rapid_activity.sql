-- Detect rapid transactions using window functions
SELECT
    t.customer_id,
    c.name,
    t.transaction_id,
    t.transaction_date,
    t.amount,
    t.transaction_type,
    LAG(t.amount) OVER (PARTITION BY t.customer_id ORDER BY t.transaction_date) AS prev_amount
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
WHERE t.transaction_type = 'Deposit';