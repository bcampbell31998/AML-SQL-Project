-- Detect potential structuring (multiple just-under-threshold deposits in a day)
SELECT 
    t.customer_id,
    c.name,
    t.transaction_date,
    COUNT(*) AS num_transactions,
    SUM(t.amount) AS total_amount
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
WHERE t.amount BETWEEN 8500 AND 10000
GROUP BY t.customer_id, t.transaction_date
HAVING COUNT(*) >= 2;