import pandas as pd
import sqlite3

df = pd.read_csv('pokemon_clean.csv')

conn = sqlite3.connect('pokemon_clean.db')

df.to_sql('pokemon', conn, if_exists='replace', index=False)

print('Data loaded successfully')

print(f'Rows loaded: {len(df)}')

conn.close()
