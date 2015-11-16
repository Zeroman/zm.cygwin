#!/bin/bash - 

# Zeroman Yang (51feel@gmail.com)
# 11/13/2015

download_files()
{
    wget -c https://cygwin.com/setup-x86.exe
    wget -c http://iij.dl.osdn.jp/vlgothic/62375/VLGothic-20141206.tar.xz
}


download_files

unix2dos *.bat 
