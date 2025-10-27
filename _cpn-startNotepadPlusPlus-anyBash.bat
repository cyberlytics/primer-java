@echo off
setlocal enableDelayedExpansion

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /D "%~dp0"

set EXEC=NOTEPAD++.EXE

echo Going to open CMD, pwsh:PS1, bash:SH
rem echo Press ENTER to continue...
rem pause
for /R %%F in (*.sh) do ("%EXEC%" "%%~dpnxF")

rem EXTENSION CANDIDATES: *.bat
rem echo Going to open BAT
rem cho Press ENTER to continue...
rem ause
rem or /R %%F in (*.bat) do ("%EXEC%" "%%~dpnxF")

pause