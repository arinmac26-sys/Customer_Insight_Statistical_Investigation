import pandas as pd

df = pd.read_csv("01_Data/raw/customer_insights_raw.csv")
print("Shape:", df.shape)
print("\nMissing values:\n", df.isna().sum())
print("\nExact duplicate rows:", df.duplicated().sum())
print("\nUnique CustomerIDs:", df["CustomerID"].nunique())
print("\nData types:\n", df.dtypes)
