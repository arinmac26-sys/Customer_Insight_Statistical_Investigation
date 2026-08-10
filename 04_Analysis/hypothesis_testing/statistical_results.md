# Statistical Results

All results below are reproduced from the supplied project dataset/notebook.

| Test | Statistic | p-value | Portfolio interpretation |
|---|---:|---:|---|
| Independent two-sample t-test: Gender vs MonthlySpend | 0.339130 | 0.734522 | Fail to reject H0 at α=0.05; no statistically significant difference detected in mean spend between male and female customers. |
| One-way ANOVA: Education vs MonthlySpend | 0.228807 | 0.922359 | Fail to reject H0 at α=0.05; no statistically significant difference detected across education groups. |
| Chi-square: Marital Status vs Pet Category | 113.517220 | 2.23897e-25 | Reject H0 at α=0.05; marital status and pet-category are statistically associated. |
| Pearson correlation: Age vs DaysSinceLastInteraction | -0.003970 | 0.681691 | Fail to reject H0; the observed linear relationship is effectively negligible and not statistically significant. |
| One-way ANOVA: State vs MonthlySpend | 1.117842 | 0.345719 | Fail to reject H0 at α=0.05; no statistically significant difference detected across states. |

## Descriptive profile

- Records: **10,675**
- Fields: **12**
- Unique CustomerID values: **1,000**
- Duplicate rows: **0**
- Missing values: **0**
- Mean Age: **49.47**
- Median Age: **49.00**
- Mean MonthlySpend: **331.61**
- Median MonthlySpend: **282.11**
- MonthlySpend standard deviation: **225.80**

## Important source-derived observations

The notebook explicitly identifies:
- Male customers as the dominant gender segment.
- Master's as the most common education level.
- California as the state contributing the most customers.
- A negative correlation between MonthlySpend and DaysSinceLastInteraction in the narrative; however, the displayed correlation matrix value for those variables should be used when making quantitative claims.
- The notebook's business-insight section also discusses education, state, gender, activity, and marital/pet relationships.

**Methodological note:** The supplied dataset contains 10,675 rows but only 1,000 unique CustomerID values, so the source appears to contain repeated customer-level records/transactions. The portfolio data model therefore distinguishes a customer entity from transaction/activity records rather than claiming the flat file is already normalized.
