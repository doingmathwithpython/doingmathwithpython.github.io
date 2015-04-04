:Title: Software Installation on Windows 7
:status: hidden

`Download <http://continuum.io/downloads#py34>`__ the Anaconda GUI
installer for Python 3. Start the installation by double clicking on
the installer.

.. figure:: {filename}/images/install/windows1.png
   :scale: 50 %

Click Next and accept the License Agreement on the next screen:

.. figure:: {filename}/images/install/windows2.png
   :scale: 50 %

You can choose to install the distribution either for your user only
or for all users using this computer. We will go with the former:

.. figure:: {filename}/images/install/windows3.png
   :scale: 50 %

Next, choose the folder where you want Anaconda to install the programs:

.. figure:: {filename}/images/install/windows4.png
   :scale: 50 %

Check the next two boxes so that you can invoke the Python shell and
other programs from anywhere on the command prompt and any other
programs will use the Python installed by Anaconda as the default:

.. figure:: {filename}/images/install/windows5.png
   :scale: 50 %

Click on “Install” to start the installation:

.. figure:: {filename}/images/install/windows6.png
   :scale: 50 %

.. figure:: {filename}/images/install/windows7.png
   :scale: 50 %

.. figure:: {filename}/images/install/windows8.png
   :scale: 50 %

Click on “Finish” to complete the installation.

Open a Windows command prompt and carry out the following steps.

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

Open a windows command prompt and type ``idle`` to start the IDLE shell or
python to start the Python 3 default shell.

.. figure:: {filename}/images/install/windows9.png
   :scale: 30 %
