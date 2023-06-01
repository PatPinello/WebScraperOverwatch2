import requests

# importing library
import matplotlib.pyplot as plt
from bs4 import BeautifulSoup as bs
import pandas as pd
import numpy as np
from pprint import pprint


def playerDict(url):
    page = requests.get(url)
    soup = bs(page.content, 'html.parser')

    n = soup.find_all("p", class_="name")
    v = soup.find_all("p", class_="value")

    names = []
    values = []
    for x in n[:4]:
        names.append(x.get_text())
    for y in v[:4]:
        values.append(int(y.get_text()))

    name_val = {}
    for key in names:
        for value in values:
            name_val[key] = value
            break

    return name_val

def firstFourVals(url):
    page = requests.get(url)
    soup = bs(page.content, 'html.parser')

    v = soup.find_all("p", class_="value")

    values = []

    for y in v[:4]:
        val = int(y.get_text())
        if(val > 1000):
            values.append(val/1000)
        else:
            values.append(val)
    return values

url_ben = 'https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/'
vals_ben = firstFourVals(url_ben)

url_ty = 'https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/'
vals_ty = firstFourVals(url_ty)

url_jess = 'https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/'
vals_jess = firstFourVals(url_jess)

url_mich = 'https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/'
vals_mich = firstFourVals(url_mich)

url_pat = ''
vals_pat = firstFourVals(url_pat)



#Elims Blows DMG HEAL
x = ["Elims", "Blows", "DMG", "HEAL"]

ind = np.arange(4)
width = 0.1

ax = plt.subplot(111)
ben = ax.bar(ind, vals_ben, width, color='b', align='center')
tyler = ax.bar(ind+width, vals_ben, width, color='g', align='center')
jess = ax.bar(ind-width, vals_ben, width, color='r', align='center')
mich = ax.bar(ind+width*2, vals_ben, width, color='y', align='center')
pat = ax.bar(ind-width*2, vals_pat, width, color='k', align='center')
ax.legend( (ben[0],tyler[0],jess[0], mich[0], pat[0]), ('ben', 'tyler','jess', 'mich', 'pat') )
ax.bar_label(ax.containers[0], label_type='edge')
ax.set_xticks(ind+width)
ax.set_xticklabels(x)
plt.show()
