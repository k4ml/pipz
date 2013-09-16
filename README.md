[ Unless issue #3 get fixed, this project is dead by now :( ]

[PIP][1] is a life saver when you need a bunch of python packages for your 
project. But [setting up pip][2] is quite a task in itself. This tool simply 
bundle pip and it's dependencies setuptools in single zip file.

## Usage

Usually I will use this in self-contained project where all dependencies reside 
in the same directory as the project, like [PHP Composer][3] did.

    mkdir myproject
    cd myproject
    wget -O pip.zip https://bit.ly/pipzip-02
    python pip.zip install -t vendor Django
    PYTHONPATH=vendor python
    >>> import django
    <module 'django' from '/myproject/vendor/django/__init__.pyc'>

## Build

If you don't trust the zip file uploaded here, you can build your own. Just 
clone this repo and run `make zip` on your own machine.

[1]:https://pypi.python.org/pypi/pip
[2]:http://www.pip-installer.org/en/latest/installing.html
[3]:http://getcomposer.org/
