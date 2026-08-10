-- DML examples for the normalized model.
-- These statements assume dimension rows are inserted first.

INSERT INTO customer_insights.dim_state (state_name)
SELECT DISTINCT state FROM staging_customer_insights;

INSERT INTO customer_insights.dim_education (education_name)
SELECT DISTINCT education FROM staging_customer_insights;

INSERT INTO customer_insights.dim_gender (gender_name)
SELECT DISTINCT gender FROM staging_customer_insights;

INSERT INTO customer_insights.dim_customer
(customer_id, customer_name, state_id, education_id, gender_id, age, married, num_pets, join_date)
SELECT DISTINCT
    s.customer_id,
    s.name,
    st.state_id,
    e.education_id,
    g.gender_id,
    s.age,
    CASE WHEN LOWER(s.married) = 'yes' THEN TRUE ELSE FALSE END,
    s.num_pets,
    s.join_date
FROM staging_customer_insights s
JOIN customer_insights.dim_state st ON st.state_name = s.state
JOIN customer_insights.dim_education e ON e.education_name = s.education
JOIN customer_insights.dim_gender g ON g.gender_name = s.gender;

INSERT INTO customer_insights.fact_customer_activity
(customer_id, transaction_date, monthly_spend, days_since_last_interaction)
SELECT
    customer_id,
    transaction_date,
    monthly_spend,
    days_since_last_interaction
FROM staging_customer_insights;
