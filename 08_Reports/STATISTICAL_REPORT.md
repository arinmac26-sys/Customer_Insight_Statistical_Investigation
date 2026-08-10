# Statistical Investigation Report

## 1. Objective

Investigate customer demographics, spending behavior and engagement using descriptive analytics, visualization and formal statistical tests.

## 2. Data

The supplied CSV contains 10,675 records and 12 columns. There are 1,000 unique CustomerIDs and no exact duplicate rows.

## 3. Descriptive statistics

| Metric | Mean | Median | Std. Dev. |
|---|---:|---:|---:|
| Age | 49.47 | 49.00 | 18.22 |
| MonthlySpend | 331.61 | 282.11 | 225.80 |
| DaysSinceLastInteraction | 538.47 | 445.00 | 398.77 |

## 4. Statistical tests

### Gender → MonthlySpend
`t = 0.339130`, `p = 0.734522`.  
At α=0.05, fail to reject H0.

### Education → MonthlySpend
`F = 0.228807`, `p = 0.922359`.  
At α=0.05, fail to reject H0.

### Marital Status → Pet Category
`χ² = 113.517220`, `df = 2`, `p = 2.23897e-25`.  
At α=0.05, reject H0. The variables are statistically associated.

### Age → DaysSinceLastInteraction
`r = -0.003970`, `p = 0.681691`.  
The linear relationship is effectively zero and not statistically significant.

### State → MonthlySpend
`F = 1.117842`, `p = 0.345719`.  
At α=0.05, fail to reject H0.

## 5. Business interpretation

The project illustrates an important analytics discipline: **descriptive differences are not automatically statistically significant differences**. The strongest statistical evidence in this investigation is the association between marital status and pet category.

## 6. Portfolio recommendation

Use this repository to demonstrate:
- analytical problem framing
- data quality discipline
- statistical reasoning
- reproducible Python workflows
- SQL modeling
- business interpretation
- professional repository organization
