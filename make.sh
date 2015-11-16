#!/bin/bash - 

# Zeroman Yang (51feel@gmail.com)
# 11/13/2015

download_cygwin()
{
    wget -c https://cygwin.com/setup-x86.exe
}


download_cygwin

unix2dos *.bat 
