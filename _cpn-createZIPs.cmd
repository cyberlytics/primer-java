@echo off
setlocal enableDelayedExpansion

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /D "%~dp0"

for /D %%D in (*) do (
	echo == %%D ==
	echo ^> Zipping...
	7z a -bb0 -bd -xr@"%~dpn0.lst" "%%D.zip" .\%%D\* >NUL 2>&1
	cd /D "%~dp0"
	echo.
)

pause