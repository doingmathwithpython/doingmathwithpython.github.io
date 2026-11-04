:Title: Software Installation on Windows 7
:status: hidden

`Download <https://www.anaconda.com/download/success?reg=skipped
>`__ the Anaconda GUI
installer for Python 3. Start the installation by double clicking on
the installer.

.. figure:: {filename}/images/install/windows1.png
   :scale: 50 %
   :alt: windows1

Click Next and accept the License Agreement on the next screen:

.. figure:: {filename}/images/install/windows2.png
   :scale: 50 %
   :alt: windows2

You can choose to install the distribution either for your user only
or for all users using this computer. We will go with the former:

.. figure:: {filename}/images/install/windows3.png
   :scale: 50 %
   :alt: windows3

Next, choose the folder where you want Anaconda to install the programs:

.. figure:: {filename}/images/install/windows4.png
   :scale: 50 %
   :alt: windows4

.. figure:: {filename}/images/install/windows5.png
   :scale: 50 %
   :alt: windows5

Click on “Install” to start the installation:

.. figure:: {filename}/images/install/windows6.png
   :scale: 50 %
   :alt: windows6

Click on “Finish” to complete the installation.

Open the Anaconda Windows Powershell command window and carry out the following steps.


Installing sympy
~~~~~~~~~~~~~~~~

Install `sympy` using the command ``conda install sympy==1.14.0``. This will install sympy to
the version `1.14.0`.

Installing matplotlib-venn
~~~~~~~~~~~~~~~~~~~~~~~~~~

To install ``matplotlib-venn``, use the command ``pip install matplotlib-venn``.

Your computer is now setup to run all the programs.

Starting Python shell
~~~~~~~~~~~~~~~~~~~~~

Open a windows command prompt and type ``idle`` to start the IDLE shell and examine
the versions of the different third party libraries we will be using:

.. figure:: {filename}/images/install/windows7.png
   :scale: 80 %
   :alt: windows7
