import json
import requests

# importing library
import matplotlib.pyplot as plt
from bs4 import BeautifulSoup as bs
import pandas as pd
import numpy as np
from pprint import pprint
import sys


def playerDict(url):
    page = requests.get(url)
    soup = bs(page.content, 'html.parser')

    # n = soup.find_all("p", class_="name")
    # v = soup.find_all("p", class_="value")
    best_names = []
    best_values = []
    statsContainer = None
    category = None
    foo_descendants = None
    # main = soup.select_one("div.main-content")
    qP = soup.findAll("blz-section", class_='stats quickPlay-view is-active')
    # pprint(qP[0])
    qP1 = qP[0]
    # pprint(qP1)
    all_names = qP1.findAll("p", class_='name')
    all_values = qP1.findAll("p", class_='value')

    #All Heroes Best
    for i in range(19):
        best_names.append(all_names[i].get_text().replace(" ","").replace("-","_").strip())
        best_values.append(float(all_values[i].get_text().replace(":","").replace("%","")))

    #take down by 1000
    for y in range(len(best_values)):
        if(best_values[y] > 1000):
            val = best_values[y]/1000
            best_values[y] = val



    best = dict(zip(best_names, best_values))
    print(best)

    return best


#web server running in container on host machine
bestOverall = []
bestOverall_dict = {}

url_ben = 'https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/'
dict_ben = playerDict(url_ben)
username_ben_sql = "'"+url_ben.replace('https://overwatch.blizzard.com/en-us/career/','').replace('/','')+"'"
dict_ben['username'] = username_ben_sql
bestOverall_dict[username_ben_sql.replace("'","")] = dict_ben


url_ty = 'https://overwatch.blizzard.com/en-us/career/DirtSoup-1478/'
dict_ty = playerDict(url_ty)
dict_ty['username'] = url_ty.replace('https://overwatch.blizzard.com/en-us/career/','').replace('/','')

# bestOverall.append(dict_ty)

url_jess = 'https://overwatch.blizzard.com/en-us/career/Deigs-11887/'
dict_jess = playerDict(url_jess)
dict_jess['username'] = url_jess.replace('https://overwatch.blizzard.com/en-us/career/','').replace('/','')

# bestOverall.append(dict_jess)


# url_mich = 'https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/'
# dict_mich = playerDict(url_mich)

url_pat = 'https://overwatch.blizzard.com/en-us/career/ComradeJuice-1182/'
dict_pat = playerDict(url_pat)
dict_pat['username'] = "'"+url_pat.replace('https://overwatch.blizzard.com/en-us/career/','').replace('/','')+"'"

# bestOverall.append(dict_pat)

print(bestOverall)

with open("bestOverall.json", "w") as outfile:
    json.dump(bestOverall_dict, outfile)
















# print(dict_ben)
# print(dict_ben.get('Eliminations-MostinGame'))
# vals_ben = firstFourVals(dict_ben)

# print(vals_ben)







# #Elims Blows DMG HEAL
# x = ["Elims", "Blows", "DMG", "HEAL"]

# ind = np.arange(4)
# width = 0.1

# ax = plt.subplot(111)
# ben = ax.bar(ind, vals_ben, width, color='b', align='center')
# tyler = ax.bar(ind+width, vals_ty, width, color='g', align='center')
# jess = ax.bar(ind-width, vals_jess, width, color='r', align='center')
# # mich = ax.bar(ind+width*2, vals_mich, width, color='y', align='center')
# pat = ax.bar(ind-width*2, vals_pat, width, color='k', align='center')
# ax.legend( (ben[0],tyler[0],jess[0], pat[0]), ('ben', 'tyler','jess', 'pat') )
# ax.bar_label(ax.containers[0], label_type='edge')
# ax.set_xticks(ind+width)
# ax.set_xticklabels(x)
# plt.show()