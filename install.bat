
@echo off 

set site=http://mirrors.163.com/cygwin/
REM  set site=http://mirrors.aliyun.com/cygwin/
set opts=--arch x86 -g --no-shortcuts --no-startmenu --no-desktop --quiet-mode
set packages=vim,ctags,cscope,python,bash-completion,git,wget,make,cmake,gcc-core,gcc-g++


:menu
echo ------------------------------------------------------ 
echo 1. manual install 
echo 2. auto install vim mini
echo 3. auto install xorg mini
echo ------------------------------------------------------ 

set c=u
set /p c=

if %c%==1 goto manual_install
if %c%==2 goto auto_install_vim
if %c%==3 goto auto_install_xorg
if %c%==4 goto install_font
goto :EOF

::--------------------------------------------------------
::-- Function section starts below here
::--------------------------------------------------------

:manual_install
set opts=--arch x86 -g --no-shortcuts --no-startmenu --no-desktop 
call :setup
goto :EOF

:auto_install_vim
set packages=vim,ctags,cscope,python,bash-completion,git,wget,make,cmake,gcc-core,gcc-g++
call :install_font
call :setup
goto :EOF

:auto_install_xorg
set packages=vim,ctags,cscope,python,bash-completion,git,wget,make,cmake,gcc-core,gcc-g++,xorg-server,xinit,gvim
call :install_font
call :setup
goto :EOF


:install_font
start VLGothic/VL-Gothic-Regular.ttf
goto :EOF

:setup
setup-x86.exe --site %site% --root %cd%\\root %opts% --packages %packages%
goto :EOF

