:Title: Errata
:pageno: 4


Chapter 4
=========

On page 97, in the section "Factorizing and Expanding Expressions", the 
expand function should be imported before we can use it via
``from sympy import expand``.


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

On page 164, the second equation under Transformation 1 should be
-0.04xn + 0.85yn + 1.6. Similarly, in the second equation under
Transformation 2, the first term of the second equation should be
0.23xn not 0.23yn. (Thanks to Dexter Edge)
