Trying out the code on Ubuntu 16.04
===================================

:date: 2016-10-05 09:00
:category: tips
:slug: install-on-ubuntu16.04
:summary: Code on Ubuntu 15.04

If you are using Ubuntu 16.04 and don't want to install the Anaconda
Python distribution for trying out the book's 
`programs <http://doingmathwithpython.github.io/pages/programs.html>`__ or 
the `sample solutions
<http://doingmathwithpython.github.io/trying-out-solutions.html>`__, this
post is for you.

Ubuntu 16.04 already comes with Python 3 installed, so we only need to install
the following packages - matplotlib, matplotlib-venn, sympy and idle3. 

Open a terminal and do the following:

.. code::

   $ sudo apt-get update
   $ sudo apt-get install python3-matplotlib python3-matplotlib-venn python3-sympy idle3


It's worth noting that this will install sympy 0.7.6 and matplotlib 1.5.1 which are
both sufficient for the book's programs. 

Starting IDLE editor
~~~~~~~~~~~~~~~~~~~~

You can now start the IDLE editor by typing in "idle3" from the terminal and then it's ready 
for your programs!

Contact
~~~~~~~

If you find any issues please email me at
``mail@echorand.me``