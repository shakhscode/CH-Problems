#!/usr/bin/env bash

#check wheather the package is installed or not.
if dpkg -l | grep -q 'numpy'
    then  
    :    #the semicolon here is equivalent to pass command in python
else
    #if not found then install it
    pip install numpy
    fi

#execute the python file main.py
python main.py
