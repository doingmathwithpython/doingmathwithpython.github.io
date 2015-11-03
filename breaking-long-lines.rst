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

When calling functions
~~~~~~~~~~~~~~~~~~~~~~

By default, when calling functions you can just press enter and without doing anything more keep writing your statement over multiple lines. For example:

.. code::

   x = 1
   print(x,
         x)
   
When not calling function
~~~~~~~~~~~~~~~~~~~~~~~~~

When you are not calling a function, you essentially have two choices: 

**Use parantheses**

This is exactly how we break the long statement in the example we started this article with. Here is another example:

.. code::

   s1 = x + x**2/2 + x**3/3 + x**4/4 + x**5/5 + x**6/6 + x**7/7 + x**8/8

Let's say we want to write the above statement over multiple lines. Here is how we can use parentheses to do so:

.. code::

   s2 = (x + x**2/2 + x**3/3 + x**4/4 + x**5/5
         + x**6/6 + x**7/7 + x**8/8)
      
You can even do this:

.. code::

   s3 = (x + x**2/2 + x**3/3
        + x**4/4 + x**5/5
        + x**6/6 + x**7/7
        + x**8/8)

**Use the implicit continuation operator**

Dealing with long strings
~~~~~~~~~~~~~~~~~~~~~~~~~




