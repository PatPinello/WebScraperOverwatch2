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
url_ty = 'https://overwatch.blizzard.com/en-us/career/DirtSoup-1478/'
url_jess = 'https://overwatch.blizzard.com/en-us/career/Deigs-11887/'
url_pat = 'https://overwatch.blizzard.com/en-us/career/ComradeJuice-1182/'

fillJSONDict(bestOverall_dict,url_ben)
fillJSONDict(bestOverall_dict,url_ty)
fillJSONDict(bestOverall_dict,url_jess)
fillJSONDict(bestOverall_dict,url_pat)
with open("bestOverall.json", "w") as outfile:
    json.dump(bestOverall_dict, outfile)
