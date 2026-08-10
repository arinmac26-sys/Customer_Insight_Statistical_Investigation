-- Staging table matching the raw CSV
CREATE TABLE IF NOT EXISTS staging_customer_insights (
    customer_id VARCHAR(30),
    name VARCHAR(200),
    state VARCHAR(100),
    education VARCHAR(100),
    gender VARCHAR(50),
    age INTEGER,
    married VARCHAR(10),
    num_pets INTEGER,
    join_date DATE,
    transaction_date DATE,
    monthly_spend DECIMAL(12,2),
    days_since_last_interaction INTEGER
);
