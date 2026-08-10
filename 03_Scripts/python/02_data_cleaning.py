import pandas as pd

SOURCE = "01_Data/raw/customer_insights_raw.csv"
TARGET = "01_Data/cleaned/customer_insights_clean.csv"

df = pd.read_csv(SOURCE)
df["JoinDate"] = pd.to_datetime(df["JoinDate"], errors="coerce")
df["TransactionDate"] = pd.to_datetime(df["TransactionDate"], errors="coerce")

assert df.isna().sum().sum() == 0, "Review missing values after cleaning"
df.to_csv(TARGET, index=False)
print("Saved:", TARGET, df.shape)
