In some of the programs discussed in the book including the sample solutions, you will see statements like:

.. code::

   print('Area: {0}, Estimated ({1}): {2}'.
              format(area_of_circle, points, estimate(radius, points)))


This is an example of breaking a long line into two (or more) lines so that we don't end up with really long lines in our code. How long should a line be when you should think about breaking it? If your statement's length is more than 80 characters, you should think about breaking it up. In the book, we often had to do so because of layout reasons, and in your projects you will want to do it so that your statements are easier to read and on the average all lines have a similar length.

How do you break?
=================

Above, we saw one example of breaking it, which is an implicit Python mechanism
