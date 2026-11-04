Code and Solutions Refresh
==========================

:date: 2026-11-03 08:20
:category: updates

*This post is in progress*

Chapter 2
=========

Programming challenges
----------------------

2. How does the temperature vary during the day?

One solution I suggested created the two lists with the data manually filled in from
the google search results.

The second solution, (file name: ``nyc_forecast_owm.py``) I proposed uses the `pyowm`
package to download the data from open weather map. A reader wrote to me recently that
it doesn't work any more.

I took a look at the proposed solution and realized that the API itself has changed, which means
the library `pyowm` had also changed significantly. Not unexpected, since it's been 11 years.

So, this is the new proposed solution to use the real data:

1. No need to use a third party package
2. Download the CSV file from a new source
3. Read the CSV file data to create the graph

I suppose my original intention for asking the reader to use a third party package might have been
an attempt to stretch the enterprising reader. However, I don't agree with that intention any more
as demonstrating how to use a third party data provider isn't in the scope of the book. So, I am
taking it out.

I have created a new web application dedicated for this exercise so that you can download the data
in CSV data format - something you learn in the book in Chapter 3 (next chapter).

**Reading the CSV file requires the reader to refer to Chapter 3**

Here's my proposed updated solution.

First download the data by:

1. Visit: https://doingmathwithpython.ai.studio/ and sign up (you don't provide email)
2. Next sign in using the username and password
3. By default New York is selected and default is also selected to 1 day
4. On the top right you can change the temperature units
5. Click on ``Download CSV data``

A file will be downloaded which will have the data in the following format::

    "Local Date & Time","Temperature"
    "2026-11-03 19:00","63.1"
    "2026-11-03 22:00","60.3"
    "2026-11-04 01:00","58.5"
    "2026-11-04 04:00","57.6"
    "2026-11-04 07:00","56.5"
    "2026-11-04 10:00","63.7"
    "2026-11-04 13:00","68.7"
    "2026-11-04 16:00","67.6"

Rename the file to ``weather_New_York_1d_3h.csv`` and place in the same directory as the program.

Here's the plan of what we will need to do:

1. Ignore the first line (CSV header row)
2. Read each row, creating one list for the time of the day and a second list for the temperature
3. Create our graph

You can find the updated solution `here <https://github.com/doingmathwithpython/code/blob/master/chapter2/solutions/nyc_forecast_real.py>`__.
