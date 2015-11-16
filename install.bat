
REM  set site=http://mirrors.aliyun.com/cygwin/
set site=http://mirrors.163.com/cygwin/

REM  set opts=--arch x86 -g --no-shortcuts --no-startmenu --no-desktop --quiet-mode
set opts=--arch x86 -g --no-shortcuts --no-startmenu --no-desktop --quiet-mode

set packages=vim,ctags,cscope,python,bash-completion,git,wget,make,cmake,gcc-core,gcc-g++

setup-x86.exe --site %site% --root %cd%\\root %opts% --packages %packages%

start VLGothic/VL-Gothic-Regular.ttf

REM  pause
