Breaking long lines in Python
=============================

:date: 2015-11-04 11:00
:category: tips
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

In the book, we often had to do so because of layout reasons even though the statement may not have exceeded 80 characters, and in your projects you will want to do it so that your statements are easier to read and on the average all lines have a similar length. This is formalized (among other things) in `PEP 8 <http://legacy.python.org/dev/peps/pep-0008/#maximum-line-length`__. 

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

**Use the implicit continuation operator**

The implicit continuation operator, ``\`` can be used to split long statements over multiple lines. Here is how we could split the above statement using ``\`` instead:

.. code::

  s3 = x + x**2/2 + x**3/3 \
      + x**4/4 + x**5/5 \
      + x**6/6 + x**7/7 \
      + x**8/8
      
      
At the end of every line (except the last), we just add a ``\`` indicating that the next line is also a part of the same statement.

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
