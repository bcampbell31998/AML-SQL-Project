# AML SQL Project: Detecting Suspicious Transactions with Real-World Scenarios

This advanced SQL project simulates an Anti-Money Laundering (AML) investigation environment with multi-layered logic, including high-value flags, behavioral analysis, and SAR (Suspicious Activity Report) generation.

## Overview

Using mock customer and transaction data, this project applies industry-standard techniques to:

- Identify suspicious patterns (e.g. smurfing, outlier activity)
- Track customer transaction behavior over time
- Simulate a SAR alert system based on severity and reason
- Aggregate alerts by customer to help prioritize investigations

## Dataset

- `customers`: Simulated customer records with country and risk level
- `transactions`: Deposit and withdrawal records
- `sars`: Flagged events linked to customers and transactions

## Key Queries

1. **High-Value Transaction Flags** – Flags any transaction above $10,000
2. **Structuring Check** – Identifies repeated sub-threshold deposits
3. **Rapid Transaction Analysis** – Uses `LAG()` to spot rapid money movement
4. **Customer Deviation Check** – Flags transactions 2x greater than customer average
5. **SAR Summary** – Aggregates SARs per customer with risk levels

## How to Use

1. Run `aml_data.sql` in your SQL engine to create tables and seed mock data
2. Use each `.sql` file in `/queries` to simulate specific AML detection techniques
3. Review SARs to prioritize risk investigations

## Skills Demonstrated

- SQL joins, aggregation, window functions
- Pattern recognition using structured logic
- Risk-level scoring and behavior-based flagging
- AML principles and compliance simulation

## Folder Structure

```
aml-sql-project/
├── data/
│   └── aml_data.sql
├── queries/
│   ├── high_value_flags.sql
│   ├── structuring_check.sql
│   ├── rapid_activity.sql
│   ├── customer_deviation.sql
│   └── sar_summary.sql
```

## Contact

Created by Brandon Campbell  
[LinkedIn](https://www.linkedin.com/in/brandon-campbell-522619162)
