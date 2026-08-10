# Data Cleaning & Quality Process

## 1. Load
- Read the source CSV with Pandas.
- Validate row count, column count and schema.

## 2. Structural checks
- Inspect `head()`, `info()` and data types.
- Check missing values.
- Check exact duplicate rows.
- Check CustomerID cardinality.

## 3. Date standardization
- Convert `JoinDate` to datetime.
- Convert `TransactionDate` to datetime.
- Use coercion during validation so malformed values can be identified.

## 4. Numeric validation
- Validate `Age`, `NumPets`, `MonthlySpend` and `DaysSinceLastInteraction` as numeric fields.
- Review distribution and outliers with histograms and boxplots.

## 5. Categorical validation
- Review Gender, Education, Married and State categories.
- Preserve source category labels for analysis.

## Quality result
- Missing values: 0
- Exact duplicate rows: 0
- Unique CustomerIDs: 1,000
- Total records: 10,675

## Portfolio note
The cleaned file is an analysis-ready representation. The SQL model in `03_Scripts/sql/DDL/` is normalized separately for portfolio architecture and does not alter the source analytical results.
