# WebScraperOverwatch2
This project utilizes the following:
- PHP Apache Web Server with a mySQL database contained in Docker.
- A Python Web Scraper
- HTML, CSS, and JS to display data

The user is given a web page that asks for
the url of up to 5 peoples Overwatch 2 accounts

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
in the future there will be a timeline option.
