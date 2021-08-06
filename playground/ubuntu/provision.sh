#!/bin/bash
#
# vagrant@docker101:/vagrant/examples$ python3 -m venv examples-env .
# The virtual environment was not created successfully because ensurepip is not
# available.  On Debian/Ubuntu systems, you need to install the python3-venv
# package using the following command.
#
#    apt-get install python3-venv
#
# You may need to use sudo with that command.  After installing the python3-venv
#package, recreate your virtual environment.


# vagrant@docker101:/vagrant/examples$ python3 -m ensurepip --default-pip
# ensurepip is disabled in Debian/Ubuntu for the system python.
#
# Python modules for the system python are usually handled by dpkg and apt-get.
#
#    apt install python3-<module name>
#
# Install the python3-pip package to use pip itself.  Using pip together
# with the system python might have unexpected results for any system installed
# module, so use it on your own risk, or make sure to only use it in virtual
# environments.

sudo apt update -y 

# https://packaging.python.org/guides/installing-using-linux-tools/#debian-ubuntu
sudo apt install -y python3-venv
sudo apt install -y python3-pip

