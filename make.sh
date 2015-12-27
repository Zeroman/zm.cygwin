#!/bin/bash - 

# Zeroman Yang (51feel@gmail.com)
# 11/13/2015

download_files()
{
    wget -c https://cygwin.com/setup-x86.exe
    wget -c http://iij.dl.osdn.jp/vlgothic/62375/VLGothic-20141206.tar.xz
    tar xvf VLGothic-20141206.tar.xz VLGothic/VL-Gothic-Regular.ttf
}

tar_files()
{
    mkdir -p cygwin
    cp -rfv *.bat cygwin/
    cp -rfv *.exe cygwin/
    cp -rfv VLGothic cygwin/
    cp -rfv *.cfg cygwin/
    tar czvf cygwin.tar.gz cygwin/
    rm -rf cygwin/
}

case $1 in
    d|download)
        download_files
        ;;
    t|tar)
        tar_files
        ;;
    *)
        unix2dos *.bat *.txt
        ;;
esac
