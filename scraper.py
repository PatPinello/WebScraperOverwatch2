import requests

# importing library
import matplotlib.pyplot as plt
from bs4 import BeautifulSoup as bs
import pandas as pd
import numpy as np
from pprint import pprint

url_ben = 'https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/'
page_ben = requests.get(url_ben)

soup_ben = bs(page_ben.content, 'html.parser')

# n = soup.find_all("p", class_="name")
v_ben = soup_ben.find_all("p", class_="value")

# names = []
values_ben = []

# for x in n[:4]:
#     names.append(x.get_text())

for y in v_ben[:4]:
    values_ben.append(int(y.get_text()))

# name_val = {}
# for key in names:
#     for value in values:
#         name_val[key] = value
#         break

#Elims Blows DMG HEAL
n_short = ["Elims", "Blows", "DMG", "Heal"]
x = n_short
y = values_ben

fig, ax = plt.subplots(figsize =(16, 9))
bars = ax.bar(x, y)
ax.bar_label(bars)
plt.show()

