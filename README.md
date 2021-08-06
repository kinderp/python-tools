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

### Playground

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

We'll follow this [tutorial](https://packaging.python.org/tutorials/packaging-projects/)

* `cd /vagrant/examples/packaging_python_projects/`
  ```    .
  ├── LICENSE
  ├── pyproject.toml
  ├── README.md
  ├── setup.cfg
  ├── src
  │   └── example_package
  │       ├── example.py
  │       └── __init__.py
  └── tests
  ```
  
  * **pyproject.toml** [doc](https://www.python.org/dev/peps/pep-0518/)
    ```toml
    [build-system]
    requires = [
      "setuptools>=42",
      "wheel"
    ]
    build-backend = "setuptools.build_meta"
    ```
    
    > pyproject.toml tells build tools (like pip and build) what is required to build your project. 
    >
    > `build-system.requires` gives a list of packages that are needed to build your package. Listing something here will only make it available during the build, not after it is installed.
    >
    > `build-system.build-backend` is the name of Python object that will be used to perform the build. If you were to use a different build system, such as flit or poetry, those would go here, and the configuration details would be completely different than the setuptools configuration described below
    
  * **setup.cfg** **setup.py** [doc](https://setuptools.readthedocs.io/en/latest/userguide/declarative_config.html)
    ```
    [metadata]
    name = example-pkg-acaristia
    version = 0.0.1
    author = Antonio Carisita
    author_email = a.caristia@nephila.digital
    description = Python tools workshop
    long_description = file: README.md
    long_description_content_type = text/markdown
    url = https://github.com/pypa/sampleproject
    project_urls =
        Bug Tracker = https://github.com/pypa/sampleproject/issues
    classifiers =
        Programming Language :: Python :: 3
        License :: OSI Approved :: MIT License
        Operating System :: OS Independent

    [options]
    package_dir =
        = src
    packages = find:
    python_requires = >=3.6

    [options.packages.find]
    where = src
    ```
    ![pypu project page](https://github.com/kinderp/python-tools/blob/main/images/test-pypy-project.png)
    
