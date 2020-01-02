Number of trailing zeros in the factorial of an integer
=======================================================

:date: 2020-01-02 19:50
:category: tips
:slug: trailing-zeros-factorial
:summary: Use Python to find the number of trailing zeros in the factorial of an integer


Hi all, I recently learned about a cool formula to calculate the number of
trailing zeros in the factorial of a number. It has been a while since I 
wrote a program to do something like this. So, I decided to change that and
write this blog post. In the spirit of wring various "calculators", we will
write a "number of trailing zero" calculator. First up though, let's refresh 
some key relevant concepts.

**Factorial**: The factorial of a number, ``n`` denoted by ``n!`` is the product ``n*(n-1)*(n-2)...*1``.
For example, ``5! = 5*4*3*2*1 = 120``.

**Trailing zeros**: The trailing zeros of a number is the number of zeros at the end of a number. For example,
the number 567100 has **two** trailing zeros.

**Floor**: The floor of a number is the greatest integer less than or equal to x. That is floor of 3.2 is 3
and that of 3.5 is 3 and the floor of 3 is 3 as well.


Now, coming back to the focus of this post, this document at brilliant.org wiki 
explains the process in `detail <https://brilliant.org/wiki/trailing-number-of-zeros/>`__.

The key bit there in is this formula:

.. math::

   \sum_{i=0}^{k}\floor*{\frac{n}{5^i}}

where, ``n`` is the number for whose factorial we want to find the number of trailing zeros in and ``k`` 


