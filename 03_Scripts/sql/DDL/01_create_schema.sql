-- DDL: normalized analytical portfolio schema
CREATE SCHEMA IF NOT EXISTS customer_insights;

CREATE TABLE IF NOT EXISTS customer_insights.dim_state (
    state_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    state_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS customer_insights.dim_education (
    education_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    education_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS customer_insights.dim_gender (
    gender_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    gender_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS customer_insights.dim_customer (
    customer_id VARCHAR(30) PRIMARY KEY,
    customer_name VARCHAR(200) NOT NULL,
    state_id INTEGER REFERENCES customer_insights.dim_state(state_id),
    education_id INTEGER REFERENCES customer_insights.dim_education(education_id),
    gender_id INTEGER REFERENCES customer_insights.dim_gender(gender_id),
    age INTEGER,
    married BOOLEAN,
    num_pets INTEGER,
    join_date DATE
);

CREATE TABLE IF NOT EXISTS customer_insights.fact_customer_activity (
    activity_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customer_id VARCHAR(30) NOT NULL REFERENCES customer_insights.dim_customer(customer_id),
    transaction_date DATE NOT NULL,
    monthly_spend DECIMAL(12,2),
    days_since_last_interaction INTEGER
);

CREATE INDEX IF NOT EXISTS ix_activity_customer
    ON customer_insights.fact_customer_activity(customer_id);

CREATE INDEX IF NOT EXISTS ix_activity_date
    ON customer_insights.fact_customer_activity(transaction_date);
