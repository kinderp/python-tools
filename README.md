# python-tools
Notes about python tools

* Packaging and Distributing a python project
  - pypi, setup.py setup.cfg MANIFEST.in wheels sdist etc.
  - setuptools + twine
  - tutorial (testPyPi) https://packaging.python.org/tutorials/packaging-projects/
* Installing packages
  - pip (how to use)
    * installing from different types of sources
    * installing for a specific user --user
  - Virtual Environment (Why we need that)
    * venv + virtualenv
    * pipx: a separate env for each installed package 
  - pip is not a real dependencies resolver (first found wins!) NOT DETERMINISTIC
    * https://stackoverflow.com/questions/55826439/how-does-the-dependency-resolution-works-with-pip-when-a-package-specify-a-range
    * https://github.com/pypa/pip/issues/988
* Managing Application Dependencies
  - pip freeze + virtualenv
  - pipenv
  - poetry
* Managing Multiple Python Versions
  - pyenv
* Managing Different Virtual Environments for testing
  - tox 
  
