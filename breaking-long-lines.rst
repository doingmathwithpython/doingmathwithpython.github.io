Breaking long lines in Python
=============================

:date: 2015-11-04 11:00
:category: articles
:slug: breaking-long-lines-in-python
:summary: Breaking long lines in Python


In some of the programs discussed in the book including the sample solutions, you will see statements like:

.. code::

   print('Area: {0}, Estimated ({1}): {2}'.
              format(area_of_circle, points, estimate(radius, points)))


This is really the following single statement:

.. code::

   print('Area: {0}, Estimated ({1}): {2}'.format(area_of_circle, points, estimate(radius, points)))
              
The first code snippet above is an example of breaking a long line into two (or more) lines so that we don't end up with really long lines in our code. How long should a line be when you should think about breaking it? If your statement's length is more than 80 characters, you should think about breaking it up. 

In the book, we often had to do so because of layout reasons even though the statement may not have exceeded 80 characters, and in your projects you will want to do it so that your statements are easier to read and on the average all lines have a similar length. This is formalized (among other things) in `PEP 8 <https://www.python.org/dev/peps/pep-0008/`__. 

Note that the examples below will for illustrative purposes break lines waaaaay less than 80 characters.

How do you break?
=================

When not calling function
~~~~~~~~~~~~~~~~~~~~~~~~~

When you are not calling a function, you essentially have two choices: 

**Use paranthesis**

This is exactly how we break the long statement in the example we started this article with. For the moment ignore the call to ``print()`` and assume that the statement is:

.. code::

    s = 'Area: {0}, Estimated ({1}): {2}'.format(area_of_circle, points, estimate(radius, points))
    
This essentially just creates the string ``s``. If we were to split this statement over multiple lines, we would do the following:

.. code::

    s = ('Area: {0}, Estimated ({1}): {2}'
         .format(area_of_circle, points, estimate(radius, points)))

Note the extra beginning and the ending parenthesis.

Here is another example:

.. code::

   s1 = x + x**2/2 + x**3/3 + x**4/4 + x**5/5 + x**6/6 + x**7/7 + x**8/8

Here is how we can use split the above statment into multiple lines using parentheses:

.. code::

   s3 = (x + x**2/2 + x**3/3
        + x**4/4 + x**5/5
        + x**6/6 + x**7/7
        + x**8/8)

**Use the line continuation operator**

The line continuation operator, ``\`` can be used to split long statements over multiple lines. Here is how we could split the above statement using ``\`` instead:

.. code::

  s3 = x + x**2/2 + x**3/3 \
      + x**4/4 + x**5/5 \
      + x**6/6 + x**7/7 \
      + x**8/8
      
      
At the end of every line (except the last), we just add a ``\`` indicating that the next line is also a part of the same statement.

**Breaking up those long ``if ..`` statements**

Often I have to break long ``if`` statements and is in fact one of the most common cases I face at work where I have to break the statement into multiple lines. Here is an example using both the approaches above:

.. code::

   # Using parenthesis
   if (cond1 and cond2 and cond3
       and cond4):
       # True block
   else:
       # False block

   # Using line continuation operator
   if cond1 and cond2 and cond3 \
      and cond4:
       # True block
   else:
       # False block



When calling functions
~~~~~~~~~~~~~~~~~~~~~~

By default, when calling functions you can just press enter and without doing anything more keep writing your statement over multiple lines. For example:

.. code::

   x = 1
   print(x,
         x)
   
   
Hence, we `could` have broken the first example we saw as:

.. code::

   print('Area: {0}, Estimated ({1}): {2}'.format(area_of_circle,
                                                 points,
                                                 estimate(radius, points)))

When calling ``format()`` we put the arguments over separate lines.

Learning more about Python coding style
=======================================

If you liked reading this article, you may also find it worth your time going over the `Python style guide <https://www.python.org/dev/peps/pep-0008/>`__. You may even find instances where I have not followed a guideline when writing the programs in the book. If you find one, let me know. 


Getting in touch
================

Stay updated or get in touch:

- `Facebook page <https://www.facebook.com/doingmathwithpython>`__
- `G+ Community <https://plus.google.com/u/0/communities/113121562865298236232>`__
- `Twitter <https://twitter.com/mathwithpython>`__

You can contact me directly via:

- Twitter: `@mathwithpython <https://twitter.com/mathwithpython>`__
- Email : doingmathwithpython@gmail.com




