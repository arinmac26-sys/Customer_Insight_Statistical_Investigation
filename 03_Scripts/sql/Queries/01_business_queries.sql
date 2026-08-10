-- Business queries

-- 1. Average monthly spend by state
SELECT s.state_name, AVG(a.monthly_spend) AS avg_monthly_spend
FROM customer_insights.fact_customer_activity a
JOIN customer_insights.dim_customer c ON c.customer_id = a.customer_id
JOIN customer_insights.dim_state s ON s.state_id = c.state_id
GROUP BY s.state_name
ORDER BY avg_monthly_spend DESC;

-- 2. Customer activity and spend
SELECT c.customer_id, c.customer_name,
       AVG(a.monthly_spend) AS avg_monthly_spend,
       AVG(a.days_since_last_interaction) AS avg_days_since_interaction
FROM customer_insights.dim_customer c
JOIN customer_insights.fact_customer_activity a
  ON a.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY avg_monthly_spend DESC;

-- 3. Education-level spend
SELECT e.education_name, AVG(a.monthly_spend) AS avg_spend
FROM customer_insights.fact_customer_activity a
JOIN customer_insights.dim_customer c ON c.customer_id=a.customer_id
JOIN customer_insights.dim_education e ON e.education_id=c.education_id
GROUP BY e.education_name
ORDER BY avg_spend DESC;

-- 4. Customer count by state
SELECT s.state_name, COUNT(DISTINCT c.customer_id) AS customers
FROM customer_insights.dim_customer c
JOIN customer_insights.dim_state s ON s.state_id=c.state_id
GROUP BY s.state_name
ORDER BY customers DESC;
