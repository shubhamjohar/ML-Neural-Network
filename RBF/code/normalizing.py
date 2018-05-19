import pandas as pd

df=pd.read_csv('X_INPUT.csv')

df_norm = (df - df.mean()) / (df.max() - df.min())

df_norm.to_csv('normalized_input.csv')