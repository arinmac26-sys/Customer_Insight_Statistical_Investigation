# Data Dictionary

| Column | Type | Description |
|---|---|---|
| CustomerID | string | Customer identifier |
| Name | string | Customer name |
| State | categorical | Customer state |
| Education | categorical | Education level |
| Gender | categorical | Gender category |
| Age | integer | Customer age |
| Married | categorical | Marital status |
| NumPets | integer | Number of pets |
| JoinDate | date | Customer join date |
| TransactionDate | date | Transaction/activity date |
| MonthlySpend | numeric | Monthly customer spend |
| DaysSinceLastInteraction | integer | Days since last interaction |

## Data grain

The raw file contains 10,675 rows and 1,000 unique CustomerIDs. Therefore, the dataset should not be treated as a pure customer-master table. Repeated CustomerIDs indicate repeated customer activity/transaction observations.
