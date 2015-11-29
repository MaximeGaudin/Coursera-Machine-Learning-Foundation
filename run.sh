#!/bin/bash

sudo aptitude install libblas-dev liblapack-dev libatlas-base-dev gfortran

if [ ! -d venv ]; then
	virtualenv venv
fi

source venv/bin/activate
pip install -r requirements.txt

jupyter-notebook
