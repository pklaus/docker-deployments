#!/bin/bash

git clone https://github.com/pklaus/mdpython.git
python3 -m venv /home/swuser/pyvenv/swuser-py3

source ~/pyvenv/swuser-py3/bin/activate
pip install bottle

