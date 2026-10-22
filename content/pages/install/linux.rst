:Title: Software Installation on Linux
:status: hidden

`Download <http://continuum.io/downloads#py34>`__ the Anaconda Python 3.4 installer
and start the installation by executing ``bash <path/to/installer>``:

::

  Welcome to Anaconda3 2.1.0 (by Continuum Analytics, Inc.)

  In order to continue the installation process, please review the license
  agreement.
  Please, press ENTER to continue
  >>> ENTER

  The “Anaconda END USER LICENSE AGREEMENT” will be displayed. Once you have read through it, type in “yes” to continue the installation:
  Do you approve the license terms? [yes|no]
  [no] >>> yes

  Anaconda3 will now be installed into this location:
  /home/testuser/anaconda3

    - Press ENTER to confirm the location
    - Press CTRL-C to abort the installation
    - Or specify an different location below

If you press ENTER above, the installation will start:

::

   [/home/testuser/anaconda3] >>>
   PREFIX=/home/testuser/anaconda3
   installing: python-3.4.1-4 ...
   installing: conda-3.7.0-py34_0
   ..

   creating default environment...
   installation finished.
   Do you wish the installer to prepend the Anaconda3 install location
   to PATH in your /home/testuser/.bashrc ? [yes|no]

We will type in “yes”:

::

   [no] >>> yes

   Prepending PATH=/home/testuser/anaconda3/bin to PATH in /home/testuser/.bashrc
   A backup will be made to: /home/testuser/.bashrc-anaconda3.bak


   For this change to become active, you have to open a new terminal.

   Thank you for installing Anaconda3!

Open a new terminal for the next steps.

Updating sympy
~~~~~~~~~~~~~~

We will first install/update ``sympy`` to make sure we have ``sympy-0.7.6`` installed::

  $ conda install sympy=0.7.6

Installing matplotlib-venn
~~~~~~~~~~~~~~~~~~~~~~~~~~
Use the following command to install matplotlib-venn::

  $ pip install matplotlib-venn

Starting Python shell
~~~~~~~~~~~~~~~~~~~~~

Open a new terminal and type in ``idle3`` to start the IDLE editor or
``python`` to start the Python 3.4 shell. You should now be able to run
all the programs and try out new ones.
