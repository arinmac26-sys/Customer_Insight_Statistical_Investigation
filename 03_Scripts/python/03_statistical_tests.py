import pandas as pd
from scipy.stats import ttest_ind, f_oneway, chi2_contingency, pearsonr

df = pd.read_csv("01_Data/cleaned/customer_insights_clean.csv")

male = df.loc[df["Gender"]=="Male", "MonthlySpend"]
female = df.loc[df["Gender"]=="Female", "MonthlySpend"]
print("Gender t-test:", ttest_ind(male, female, equal_var=False))

edu_groups = [g["MonthlySpend"] for _, g in df.groupby("Education")]
print("Education ANOVA:", f_oneway(*edu_groups))

df["PetCategory"] = pd.cut(df["NumPets"], bins=[-1,0,2,10],
                           labels=["No Pets","1-2 Pets","3+ Pets"])
table = pd.crosstab(df["Married"], df["PetCategory"])
print("Chi-square:", chi2_contingency(table))

print("Age vs interaction:", pearsonr(
    df["Age"], df["DaysSinceLastInteraction"]
))

state_groups = [g["MonthlySpend"] for _, g in df.groupby("State")]
print("State ANOVA:", f_oneway(*state_groups))
