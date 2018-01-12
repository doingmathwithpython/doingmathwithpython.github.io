:Title: Errata
:pageno: 4


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


Chapter 5
=========

On page 132, in the section "Probability", the program should start
with the import statment ``from sympy import FiniteSet``. (Thanks to
Dexter Edge)

On page 132, in the section "Probability," the code line above the one
marked with a (3), which reads ``for num in s:`` should instead read:
``for num in space``.

On page 139, in the code for simulating a fictional ATM, the statement
``probability = [1/6, 1/6, 1/3, 2/3]`` should be ``probability = [1/6,
1/6, 1/3, 1/3]``.  (Thanks to Luis Soares)


Chapter 6
=========

On page 164 and 165, the transformation equations have some errors in the text
(not in the program). The eequations should be:

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
