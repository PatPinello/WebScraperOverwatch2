import json
import requests
from bs4 import BeautifulSoup as bs
from pprint import pprint
import sys

bestOverall_dict = {}

def playerDict(url):
    page = requests.get(url)
    soup = bs(page.content, 'html.parser')
    best_names = []
    best_values = []
    qP = soup.findAll("blz-section", class_='stats quickPlay-view is-active')
    qP1 = qP[0]
    all_names = qP1.findAll("p", class_='name')
    all_values = qP1.findAll("p", class_='value')

    #All Heroes Best
    for i in range(19):
        best_names.append(all_names[i].get_text().replace(" ","").replace("-","_").replace("s","").replace("S","").strip())
        best_values.append(float(all_values[i].get_text().replace(":","").replace("%","")))

    best = dict(zip(best_names, best_values))
    return best

def fillJSONDict(JSONDict, url):
    playerDictionary = playerDict(url)
    username = "'"+url.replace('https://overwatch.blizzard.com/en-us/career/','').replace('/','')+"'"
    playerDictionary['username'] = username
    user = username.replace("'","")
    JSONDict[user] = playerDictionary




url_ben = 'https://overwatch.blizzard.com/en-us/career/Ninjaman7000-1418/'
# dict_ben = playerDict(url_ben)
# username_ben_sql = "'"+url_ben.replace('https://overwatch.blizzard.com/en-us/career/','').replace('/','')+"'"
# dict_ben['username'] = username_ben_sql
# bestOverall_dict[username_ben_sql.replace("'","")] = dict_ben

url_ty = 'https://overwatch.blizzard.com/en-us/career/DirtSoup-1478/'
# dict_ty = playerDict(url_ty)
# username_ty_sql = "'"+url_ty.replace('https://overwatch.blizzard.com/en-us/career/','').replace('/','')+"'"
# dict_ty['username'] = username_ty_sql
# bestOverall_dict[username_ty_sql.replace("'","")] = dict_ty

url_jess = 'https://overwatch.blizzard.com/en-us/career/Deigs-11887/'
# dict_jess = playerDict(url_jess)
# username_jess_sql = "'"+url_jess.replace('https://overwatch.blizzard.com/en-us/career/','').replace('/','')+"'"
# dict_jess['username'] = username_jess_sql
# bestOverall_dict[username_jess_sql.replace("'","")] = dict_jess


url_pat = 'https://overwatch.blizzard.com/en-us/career/ComradeJuice-1182/'
# dict_pat = playerDict(url_pat)
# username_pat_sql = "'"+url_pat.replace('https://overwatch.blizzard.com/en-us/career/','').replace('/','')+"'"
# dict_pat['username'] = username_pat_sql
# bestOverall_dict[username_pat_sql.replace("'","")] = dict_pat
fillJSONDict(bestOverall_dict,url_ben)
fillJSONDict(bestOverall_dict,url_ty)
fillJSONDict(bestOverall_dict,url_jess)
fillJSONDict(bestOverall_dict,url_pat)
with open("bestOverall.json", "w") as outfile:
    json.dump(bestOverall_dict, outfile)
