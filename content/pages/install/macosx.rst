:Title: Software Installation on Mac OS X Yosemite
:status: hidden

`Download <http://continuum.io/downloads#_macosx>`__ the Anaconda GUI
installer for Python 3. Start the installation by double clicking on
the .pkg file:

.. figure:: {filename}/images/install/mac1.png
   :scale: 50 %
   :alt: mac1

Click Next on the next two screens and accept the License Agreement:

.. figure:: {filename}/images/install/mac4.png
   :scale: 50 %
   :alt: mac2
         
You can choose to install the distribution either for your user only
or for all users using this computer. We will go with the former:

.. figure:: {filename}/images/install/mac5.png
   :scale: 50 %
   :alt: mac5

The error message is a bug in the installer software. Just click it, and
it will disappear. Click Continue to proceed.

.. figure:: {filename}/images/install/mac7.png
   :scale: 50 %
   :alt: mac7

Click "Install"  to start the installation.


.. figure:: {filename}/images/install/mac9.png
   :scale: 50 %
   :alt: mac7

Click on "Close" to complete the installation.

Open the Terminal app and carry out the following steps.

Installing sympy
~~~~~~~~~~~~~~~~

The installation may come with ``sympy`` already installed, but we want to
make sure that we have at least ``0.7.6``, so we will install it using the
command ``conda install sympy=0.7.6``. This should update (if already
installed) or install sympy to the 0.7.6 version.

Installing matplotlib-venn
~~~~~~~~~~~~~~~~~~~~~~~~~~

To install ``matplotlib-venn``, use the command ``pip install matplotlib-venn``.

Your computer is now setup to run all the programs.

Starting Python shell
~~~~~~~~~~~~~~~~~~~~~

Open a Terminal and type ``idle3`` to start the IDLE shell or
python to start the Python 3 default shell.

.. figure:: {filename}/images/install/mac10.png
   :scale: 30 %
   :alt: mac10
