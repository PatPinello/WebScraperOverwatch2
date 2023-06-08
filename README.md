# WebScraperOverwatch2
This project utilizes the following:
- PHP Apache Web Server with a mySQL database contained in Docker.
- A Python Web Scraper
- HTML, CSS, and JS to display data

Overwatch 2 is a multiplayer online game.
It's website holds all the statistics for each player,
but there's no easy way to compare them.


The user is given a web page that asks for
the url of up to 5 people's Overwatch 2 accounts.

Once these are added, an attribute is selected.
In other words, the players stats for that attribute will be displayed.

The Python scrapes data from the given urls.
It outputs it in a correctly formatted JSON.

This JSON is then read by PHP running on the Apache web server.
This is then fed into a SQL database after adding the current date.
This allows for data to be tracked over time.

When the user hits submit, the data is pulled
from the database through PHP and passed to Javascript 

This is done using cookies and variables.

The data is then displayed in a chart.

For now, bar charts are the only type available.
In the future there will be a timeline option.

The project is currently running on my localhost.
I could use a tunneler to expose this to the internet, but this would be unsafe.
For now, I'll include images.

HTML, CSS, and Js are used to display a simple webpage prompting the user for the urls of the users they'd like to compare.
  Additionally, they must choose 1 attribute to compare the players against.
    These are saved as cookies both because it makes it easy to interface with PHP, but also
      to save the user time.
    ![image](https://github.com/PatPinello/WebScraperOverwatch2/assets/68654707/8114bafa-b8c7-4ef7-afa6-7fcd027a06e7)

When these are submitted, the page is reloaded and the chart is displayed.
  Below is an example with 4 players comparing their "Most in Game Eliminations"
    ![image](https://github.com/PatPinello/WebScraperOverwatch2/assets/68654707/967a3d59-7225-4488-aea3-deb082a3923b)

The scraper.py script takes the urls, follows them, and scrapes the users data.
  This is done with BeautifulSoup and reading through the HTML below:
    ![image](https://github.com/PatPinello/WebScraperOverwatch2/assets/68654707/a5cc37ad-a5c3-4e6d-a6ae-638817539154)
  The data is then formatted for SQL and dumped as a JSON.

PHP picks up this JSON and checks if the user exists, if the user data with that date exists, etc.
  It's then sent to the SQL database. 
    When the data needs to be read PHP creates Javascript variables to make the data avaiable on the frontend.

mySQL Database created through PHP using an image of an Apache Web Server:
![chart](https://github.com/PatPinello/WebScraperOverwatch2/assets/68654707/7e0304e6-fd07-44b5-b4ec-1f87e9de54dc)
  Example of SQL database entry:
  
  
    ![image](https://github.com/PatPinello/WebScraperOverwatch2/assets/68654707/471ca35d-e6c5-4183-b389-0a1f8d22135b)



Next Steps:
I would like to add the abiity to select a time frame and view the data over a period of time.
The date values are already written in so this is as simple as PHP query SQL for the values ordered by date and saving them as a Javscript object.

Ideally the Python script would also be on the server and run exclusively on the backend at periodic intervals. Then it would'nt waste time
scraping when the program is being used.
