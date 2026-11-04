Code and Solutions Refresh
==========================

:date: 2026-11-04
:category: updates

__This post is in progress__

Chapter 2
=========

Programming challenges
----------------------

2. How does the temperature vary during the day?

In the suggested solution provided with the book, I had proposed using the `pyowm` package
to download the data from Open weather map. A reader wrote to me recently that it doesn't work
any more.

I took a look at the proposed solution and realized that the API itself has changed, which means
the library `pyowm` had also changed significantly. Not unexpected, since it's been 11 years.

So, this is the new proposed solution.
