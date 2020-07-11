:Title: Errata
:date: 2015-04-04
:pageno: 4

Chapter 2
=========

On Page 47, in the second last sentence of the second last paragraph, the book currently states "The x-axis of the 
graph displays the force, and the y-axis displays the distance.". It should be "The x-axis of the graph displays the distance
and the y-axis displays force". 

(Thanks to Mike Beasley for pointing this out)

On Page 48, Figure 2-12 caption should be "Figure 2-12: Visualization of the relationship between the gravitational force and 
the distance" and not "..squared distance".

On Page 52, in the paragraph starting with "In this program...", the book currently states, 
".. we calculate the time of flight and then call the frange() function with the values for start, final, and 
increment set to 0,". "increment" should be "interval".

(Thanks to a lovely Japanese reader for pointing this out).

Chapter 3
=========

On Page 77, in the program for finding the correlation coefficient, the last `for` loop has an extra space infront of
it. It should be:

.. code::

   ..
   y_square = []
   for yi in y:
       y_square.append(yi**2)
   ...
   

(Thanks to Elmar Bucher for pointing this out)

On Page 87, the book refers to the Google Correlate service. However, as of December 2019,
the service has been shutdown. Since the chapter requires you to download a CSV formatted data,
it is no longer possible. However, you can instead download a version of the data that I had
used 5 years back when writing the book from `here <https://github.com/doingmathwithpython/code/blob/master/chapter3/solutions/correlate-summer.csv>`__.

(Thanks to Tuomo Kalliokoski)

Chapter 4
=========

On page 97, in the section "Factorizing and Expanding Expressions", the 
expand function should be imported before we can use it via
``from sympy import expand``.

On page 99, in the code snippet on Line (2) and the following, the indentation is wrong.
It should be:

.. code::

   for i in range(2, n+1):
       series = series + (x**i)/i

(Thanks to Taylan Yemliha)

On page 112, an import is missing - `SympifyError` used later in the
`try..except` block. The initial import statement should hence be:

.. code::
   
   from sympy import Symbol, sympify, solve, SympifyError

(Thanks to Robert Buckley for pointing it out)

On page 115, in the first paragram, "using the first letter of the color.." is not correct for black, since we use `k`
for `black` color.

(Thanks to Elmar Bucher for pointing this out)

Chapter 5
=========

On page 132, in the section "Probability", the program should start
with the import statment ``from sympy import FiniteSet``. (Thanks to
Dexter Edge)

On page 132, in the section "Probability," the code line above the one
marked with a (3), which reads ``for num in s:`` should instead read:
``for num in space``.

On page 135, in "Can You Roll That Score?" there is no need for `import matplotlib.pyplot as plt`.

(Thanks to Elmar Bucher for the above)

On page 139, in the code for simulating a fictional ATM, the statement
``probability = [1/6, 1/6, 1/3, 2/3]`` should be ``probability = [1/6,
1/6, 1/3, 1/3]``.  (Thanks to Luis Soares)


Chapter 6
=========

On page 164 and 165, the transformation equations have some errors in the text
(not in the program). The equations should be:

**Transformation 1**

x1 = 0.85*x + 0.04*y

y1 = -0.04*x + 0.85*y + 1.6


**Transformation 2**

x1 = 0.2*x - 0.26*y

y1 = 0.23*x + 0.22*y + 1.6

**Transformation 3**

x1 = -0.15*x + 0.28*y

y1 = 0.26*x  + 0.24*y + 0.44


**Transformation 4**

x1 = 0

y1 = 0.16*y

(Thanks to Dexter Edge, Fatih Kürşat Cansu, Toshiaki Kurokawa and Twitter @mkamimura)

Chapter 7
=========

On page 195, an import is missing - `SympifyError` used later in the
`try..except` block. The initial import statement should hence be:

.. code::
   
   from sympy import Derivative, Symbol, sympify, SympifyError
 
(Thanks to Robert Buckley for pointing it out)

On page 204, in the first paragraph, the first property should be "..the function value for x is always greater then or equal 0".

(Thanks to Elmar Bucher for pointing this out)
