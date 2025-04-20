-- Identify customers whose recent transaction exceeds their average by 2x
WITH customer_avg AS (
    SELECT customer_id, AVG(amount) AS avg_amount
    FROM transactions
    GROUP BY customer_id
)
SELECT 
    t.customer_id,
    c.name,
    t.transaction_date,
    t.amount,
    ca.avg_amount
FROM transactions t
JOIN customer_avg ca ON t.customer_id = ca.customer_id
JOIN customers c ON t.customer_id = c.customer_id
WHERE t.amount > 2 * ca.avg_amount;