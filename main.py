import csv
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import plotly.express as px
import statistics as stat

with open('GetSolarRadiationForecastsByLocation.csv') as csv_file:
    csv_reader = csv.reader(csv_file)

    #for line in csv_reader:
        #print(line)

df = pd.read_csv('GetSolarRadiationForecastsByLocation.csv')
dg = df[0:671]
fig = px.line(df, x='PeriodEnd', y='Ghi', labels={'PeriodEnd': 'Date', 'Ghi': 'Irradiance W/m-2'})
fig.show()
print(df.size)
print(dg.size)
print(df.head(48))
print(sum(df.Ghi))