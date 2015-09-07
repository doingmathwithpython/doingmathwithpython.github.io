Set operations with Python ``set`` compared to SymPy's FiniteSet
================================================================
:date: 2015-09-05 23:00
:category: articles
:slug: Sets-in-SymPy-and-built-in-Python-sets
:summary: Sets in SymPy and built-in Python sets


`Chapter 5` (`About <{filename}pages/about.rst>`__) of the book discusses working with mathematical sets in
Python. While writing the chapter, I had a choice of whether to
use Python 3's built-in `set
<https://docs.python.org/3.3/library/stdtypes.html?highlight=union#set-types-set-frozenset>`__  data
structure or use SymPy's (0.7.6 +) ``FiniteSet`` class. I decided to go ahead
with the latter. My choice is briefly explained towards the end of
this post, but hopefully it will be clear before that.

Next, I describe how you can use Python 3's built-in set data
structure to create sets and perform set operations such as finding
the union, intersection or cartesian product of sets. For comparison,
I also show how you can do the same using SymPy's ``FiniteSet`` class.
          
          
Creating a set
~~~~~~~~~~~~~~

We can create a set consisting of the elements `{1, 2, 3}` in Python 3
as follows:

.. code-block:: python

   >>> s1 = {1, 2, 3}
   >>> s1
   {1, 2, 3}

To create a set when the elements are already in a list (for
example), we would use the following syntax:

.. code-block:: python
                
   >>> items = [1, 2, 3]
   >>> s2 = set(items)
   >>> s2
   {1, 2, 3}

The comparative operations using SymPy's ``FiniteSet`` class are:

.. code-block:: python

   >>> from sympy import FiniteSet
   >>> s1 = FiniteSet(1, 2, 3)
   >>> s1
   {1, 2, 3}

   >>> items = [1, 2, 3]
   >>> s2 = FiniteSet(*items)
   >>> s2
   {1, 2, 3}

To create an `empty set <https://en.wikipedia.org/wiki/Empty_set>`__,
in Python 3 you would use create an empty ``set`` object:

.. code-block:: python

   >>> e = set()
   >>> e
   set()

In SymPy, an empty set is represented by an ``EmptySet`` object. Thus,
you can either create an empty set by directly creating an
``EmptySet`` object or by creating a ``FiniteSet`` object without
specifying any set members, like so:

.. code-block:: python

   >>> from sympy import EmptySet
   >>> e = EmptySet()
   >>> e
   EmptySet()
   >>> e = FiniteSet()
   >>> e
   EmptySet()


Cardinality and Membership
~~~~~~~~~~~~~~~~~~~~~~~~~~

The ``len()`` function returns the number of set members for sets
created using either of the above approaches.

Similarly, to check if an item ``x`` is present in a set, ``s``
created using any of the above approaches, we can use the statement, 
``x in s``.

Union and intersection
~~~~~~~~~~~~~~~~~~~~~~

The ``union()`` method can be used in both cases to find the union of
two or more sets:

.. code-block:: python

   >>> s1 = set([1, 2, 3])
   >>> s2 = set([2, 3, 4])
   >>> s3 = set([2, 3, 4, 5])
   >>> s1.union(s2).union(s3)
   {1, 2, 3, 4, 5}

Similary in the case of SymPy:

.. code-block:: python

   >>> from sympy import FiniteSet
   >>> s1 = FiniteSet(1, 2, 3)
   >>> s2 = FiniteSet(2, 3, 4)
   >>> s3 = FiniteSet(2, 3, 4, 5)
   >>> s1.union(s2).union(s3)
   {1, 2, 3, 4, 5}


The ``intersection()`` method can be used to find the intersection of
two or more sets created using either of the above approaches. Continuing
with the above three sets:

.. code-block:: python
                
   >>> s1 = set([1, 2, 3])
   >>> s2 = set([2, 3, 4])
   >>> s3 = set([2, 3, 4, 5])
   >>> s1.intersection(s2).intersection(s3)
   {2, 3}

Similary, in SymPy:

.. code-block:: python

   >>> s1.intersection(s2).intersection(s3)
   {2, 3}
                

Cartesian product
~~~~~~~~~~~~~~~~~

To find the cartesian product of sets created via the built-in ``set``
data structure, we have to use the ``product()`` function in the
`itertools
<https://docs.python.org/3/library/itertools.html#itertools.product>`__
module:

.. code-block:: python

  >>> s1 = {1, 2, 3}
  >>> s2 = {4, 5, 6}
  >>> import itertools
  >>> itertools.product(s1, s2)
  <itertools.product object at 0x10418c990>

However considering that the `cartesian product` of two sets `should
<http://mathinsight.org/definition/cartesian_product>`__ be another set,
the ``product()`` function doesn't really then return the
cartesian product itself, but (an iterator to) the elements in it. Hence, if we
try to apply the result returned by the function directly to a method or
function which is expected to be applicable to a set, it will fail. For
example, ``itertools.product(s1, s2).union(s3)`` will result in an error, but
``set(itertools.product(s1, s2)).union(s3)`` will work.

Using SymPy's ``FiniteSet``, you can use the ``*``
(multiplication or product) operator to find the cartesian product
and the result is a set itself. Thus, it is closer to what
a cartesian product is mathematically. An example follows:

.. code-block:: python

  >>> s1 = FiniteSet(1, 2, 3)
  >>> s2 = FiniteSet(4, 5, 6)
  >>> >>> s3 = FiniteSet(7, 8, 9)
  >>> (s1*s2).union(s3)
  {7, 8, 9} U {1, 2, 3} x {4, 5, 6}

**Cartesian product of a set with itself**


To find the cartesian product of a set with itself, i.e. `s1*s1` for
example, we pass in a keyword argument, ``repeat`` while calling the
``itertools.product()`` function. The value of ``repeat`` is the
`power` we want to raise the set to. Thus, ``itertools.product(s1,
repeat=2)`` will calculate the cartesian product, `s1*s1`:

.. code-block:: python

  >>> s1 = {1, 2, 3}
  >>> set(itertools.product(s1, repeat=2))
  {(1, 2), (3, 2), (1, 3), (3, 3), (3, 1), (2, 1), (2, 3), (2, 2), (1, 1)}


In SymPy, the ``**`` operator can be used for finding the cartesian
product of a set with itself:

.. code-block:: python

   >>> s1 = FiniteSet(1, 2, 3)
   >>> s1**2
   {1, 2, 3} x {1, 2, 3}


Subset/super set/proper subset  checking
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The ``issubset()`` and ``issuperset()`` methods are available for sets
created via either approaches to check if a set is a subset and super
set of another, respectively. Thus, ``s1.issubset(s2)`` will check if
`s1` is a subset of `s2`. 

**Checking for proper subset and superset**

To check if a set, `s1` is a `proper subset
<http://mathworld.wolfram.com/ProperSubset.html>`__ of another set,
`s2` when using built-in set, we can do the following:

.. code-block:: python

  >>> s1 = {1, 2, 3}
  >>> s2 = {1, 2, 3, 4}
  >>> s1.issubset(s2) and s1 != s2
  True
        
We can do something similar for `proper superset
<http://mathinsight.org/definition/proper_superset>`__.

In SymPy, we have ``is_proper_subset()`` and ``is_proper_superset()``
methods which can be used to check if a set is a proper subset or
superset of another, respectively. Thus, the above would be written as
``s1.is_proper_subset(s2)``.


Calculating the powerset
~~~~~~~~~~~~~~~~~~~~~~~~

For sets created via built-in ``set`` data structure, there is no
direct method available to create the `power set
<https://www.mathsisfun.com/sets/power-set.html>`__. However, you can use the
``powerset`` recipe described in the `itertools documentation
<https://docs.python.org/3/library/itertools.html#recipes>`__.

On the other hand, in SymPy, there is a ``powerset()`` method
available which returns the power set:

.. code-block:: python

   >>> s1 = FiniteSet(1, 2, 3)
   >>> s1.powerset()
   {EmptySet(), {1}, {2}, {3}, {1, 2}, {1, 3}, {2, 3}, {1, 2, 3}}

You can see that the ``powerset()`` method returns the power `set` and not the
elements in it.

Choice of SymPy's ``FiniteSet`` over ``set``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From the above comparison, we can see that SymPy's ``FiniteSet``
provides us with nice features such as being able to use the ``*``
operator to find the cartesian product, ``**`` operator to calculate
the cartesian product with itself and ``powerset()`` method for calculating the
power set. These are not present when using the built-in ``set`` data
structure. This was certainly a big driving factor in my choice,
since SymPy was also being used in other chapters of the book.

However, a *key* reason for my choice was that I wanted to show how we
can create sets which did not allow addition or removal once created -
like mathematical sets. This need was fulfilled by SymPy's
``FiniteSet`` since it used Python's ``frozenset`` data structure and
not the ``set`` data sturcture.

The alternative to that would have
been to use ``frozenset`` directly, but I just did not like the idea
of it and I would have also missed out on the nice features
``FiniteSet`` would provide (eventually). I should note here that once
I had made the decision to go with  ``FiniteSet``, I `contributed
<https://github.com/amitsaha/sympy/commits?author=amitsaha>`__ patches
to SymPy to make the methods of ``FiniteSet`` more compatible with Python's built in set 
and also implement minor features I discussed above.
