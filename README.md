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

### Plauground

Before doing anything you shuold:

* Install `virtualbox`
* Install `vagrant`

#### Start lab

* Clone this repo: `git@github.com:kinderp/python-tools.git`
* move to `ubuntu` dir: `cd python-tools/playground/ubuntu/`
* Run: `vagrant up` and wait
* Ssh into vm: `vagrant ssh`

#### Stop lab

* `vagrant halt` 

#### Suspend - Resume lab

* `vagrant suspend`
* `vagrant resume`

#### Destroy lab

Lab takes space on disk so it's a good idea removing it after your training session.

* Before destroying lab please check if it exists:
  ```
  VBoxManage list vms|grep nephila
  "nephila_ubuntu" {9e6b0cee-9a45-4c50-83fd-8809b21075a1}
  ```
* `vagrant destroy`
* You shouldn't get any output now running: `VBoxManage list vms|grep nephila`
* `vagrant destroy`

### Packaging and Distributing a python project
