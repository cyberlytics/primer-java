@echo off

cd /D "%~dp0"

echo Change into bin as classDir...
cd bin
echo Current Directory: %CD%
echo Starting rmiregistry... (Keep Window open, do not close)
rmiregistry
pause