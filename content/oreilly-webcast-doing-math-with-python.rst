
O'Reilly Webcast: Doing Math with Python
========================================

:date: 2016-07-01 19:00
:category: updates
:slug: oreilly-webcast-doing-math
:summary: O'Reilly Webcast

*Updated post after the webcast*

A big thank you to all of you who turned up for the webcast across the world. I really had a great time and hope the session was informative to all of you. For those who didn't make it to the webcast, it's now available for `viewing <http://www.oreilly.com/pub/e/3712>`__.

The slides, transcript and the demos are all available at the `GitHub repository <https://github.com/doingmathwithpython/oreilly-webcast-2016>`__. Feel free to use them in any capacity you find useful. If you already have `Anaconda installed <https://doingmathwithpython.github.io/pages/software-installation.html>`__, get the above code, and run `jupyter-notebook` from the same directory to be able to play with the code. 

Some of you asked a number of questions which I couldn't answer as well as I would have wanted to during the webcast, so I will make a better attempt below:

**Q: What is the difference between an interpreter, ide and text editor? And what do you recommend for beginners?**

An ``interpreter`` is what runs your program. Without going into the details, the Python interpreter is what converts a statement such as ``print("Hello")`` to a form that can be understood by the computer to finally print ``Hello`` on screen. 
An ``IDE`` or Integrated Development Environment is a software application where we can write programs and run them usually via  Graphical User Interface. IDEs generally feature helpful features such as code completion and can be useful when working with large projects. A ``text editor`` is for writing our programs or other text. It usually doesn't support features that an IDE would support but of course, you can configure and enhance text editors to give you IDE-like features. 

For beginners, I recommend starting with text editors. I think that doesn't overwhelm someone who is learning with the IDE features. That said, `IDLE <https://docs.python.org/3/library/idle.html>`__ is a good in-between choice for beginners and one that I personally use in the book and definitely would be my first choice.

**Q: What library do we use for importing metric units that works well with sympy?**

I would recommend taking a look at SymPy's `Units <http://docs.sympy.org/dev/modules/physics/units.html#>`__ module and see if it has what you need. In addition, and if you already don't know about it, `pint <https://github.com/hgrecco/pint>`__ would be another library to look at.

**Q: Do you use notebook for exploratory work?**

Yes, I use notebook for exploratory work. I think notebooks are great when you want the code and result together in a single document. It's great for sharing too. I recently created `slides <http://echorand.me/presentation-slides-with-jupyter-notebook.html#.V3XhNe0yphE>`__ as a Notebook.

**Q: Can Sympy be used for the development in a engineering software (i.e. Finite Element Method)? Would the computational speed be (good)? (Not sure about the second part of the question)**

You may be interested in taking a look at `SfePy <http://sfepy.org/doc-devel/index.html>`__ 

**Q: Thoughts on Cython? Sagemath?**

I haven't worked much with Cython. I know about it and what it can useful for. So, I guess if you are looking for speed, definitely look into it. I would also recommend looking at `Numba <http://numba.pydata.org/>`__. Sagemath is more of a system itself than a library. It integrates popular Python libraries and would definitely be something to explore.

**Q: Should students use IDLE or a notebook format?**

I would recommend using IDLE to start with. It gives the opportunity for the student to at least get an idea of the cycle of editing code and running it. I would only introduce notebook later and in addition to IDLE. Both have their merits, but Notebook just introduces one more thing to grasp in the beginning.

**Q: Any recommendations for introducing 3D graphics e.g. polyhedrons on screen?**

I haven't explored them, you may want to look at `Pi3D <https://pi3d.github.io/html/>`__ or `VPython <http://vpython.org/>`__.

**Q: How well do SymPy and Numpy work together?**

No personal experience, but searching a bit, it looks like you may want to look at SymPy's `Lambdify <http://docs.sympy.org/dev/modules/utilities/lambdify.html>`__ feature. The `SymPy google group <https://groups.google.com/forum/#!forum/sympy>`__ may give you a better answer.


**Q: You are working in Jupyter - can the "app"s you should be embedded in a regular HTML web page?**

I haven't personally tried this. I think this `post <https://jakevdp.github.io/blog/2013/12/05/static-interactive-widgets/>`__ may give you clues to do it. 

*Links*

- `Webcast Recording <http://www.oreilly.com/pub/e/3712>`__
- `Slides, Transcript and Demos <https://github.com/doingmathwithpython/oreilly-webcast-2016>`__
- `Doing Math with Python book <https://www.nostarch.com/doingmathwithpython>__

*Announcement post*

I am very excited to share that I am doing a webcast this coming week with O'Reilly titled
"Doing Math with Python". You can register for it on the `event page <http://www.oreilly.com/pub/e/3712>`__.

Here are the date and time of the webcast:

- Wed, June 29th at 7 PM, San Francisco
- Wed, June 29th at 10pm, New York
- Thu, Jun 30th at 3am - London
- Thu, Jun 30th at 7:30am - Mumbai
- Thu, Jun 30th at 10am - Beijing
- Thu, Jun 30th at 11am - Tokyo
- Thu, Jun 30th at 12pm - Sydney

I have created a `GitHub repository <https://github.com/doingmathwithpython/oreilly-webcast-2016>`__ which
will have the rough transcript, final slides and the code examples as Jupyter Notebooks.
