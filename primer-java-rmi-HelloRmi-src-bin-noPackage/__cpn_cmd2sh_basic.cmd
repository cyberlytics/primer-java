@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem ***************************************************************************
rem * author: Christoph Peter Neumann
rem ***************************************************************************

cd /d "%~dp0"

SET foo=BAR

for /R %%F in (*.cmd) do (
if "%%~dpnxF"=="%~dpnx0" (
	echo INFO: einzige Ausnahme ist %0
) else (
	echo == %%F ==
	rem *****************************************
	rem * The '^^!' is necessary because of the
	rem * the usage of 'EnableDelayedExpansion'!
	rem * The double '%%' in the sed expression
	rem * is only necessary within a script file. 
	rem * Use '%' on direct command-line.
	rem * The double '^^' in the sed expression
	rem * is only necessary within a script file. 
	rem * Use '^' on direct command-line.
	rem * Use 'sed -r' for "groupings and \1" because
	rem * then a basic '(' works for grouping.
	rem *****************************************
	rem * Testwise execution:
	rem *****************************************
	rem echo %%ID%% | sed -r -e "s:%%([^%%]+)%%:$\1:"

	echo #^^!/bin/sh > "%%~dpnF.sh"
	
	cmd /D/C type "%%~dpnxF" | egrep -vi "echo off" | egrep -vi "setlocal" | egrep -vi "rem" | egrep -vi "pause" | sed -e "s/[Ss][Ee][Tt] \+//" | sed -e "s/setlocal .*//" | sed -e "s/del/rm/" | sed -e "s:[Nn][Uu][Ll]:/dev/null:" | sed -e "s:cd \+/[Dd]:cd:" | sed -e "s/%%~dp0/$(dirname $(readlink -f $0))/" | sed -e "s:%%~dpn0:$(dirname $0)/$(basename $0 .sh):g" | sed -e "s/[.][Ee][Xx][Ee]//" | sed -e "s:[Cc][Mm][Dd] /[Dd] */[Cc] \+::" | sed -e "s:\\\\:/:g" | sed -r -e "s:echo (.*):echo ""\1"":g" | sed -r -e "s:%%CD%%:`pwd`:g" | sed -r -e "s:dir /B /S ([^/]*)/(\*.\w+):find \1 -type f -name \2:g" 2> NUL >> "%%~dpnF.sh"
	rem | sed -r -e "s:%%([^%%]+)%%:$\1:g"
))

cmd /D/C eolConverter lf "**/*.sh" > NUL 2>&1

pause