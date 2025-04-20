-- Join SARs to customers and summarize alerts
SELECT 
    s.customer_id,
    c.name,
    c.risk_level,
    COUNT(s.sar_id) AS total_alerts,
    MAX(s.alert_reason) AS latest_alert,
    MAX(s.flagged_date) AS last_flagged
FROM sars s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY s.customer_id, c.name, c.risk_level;