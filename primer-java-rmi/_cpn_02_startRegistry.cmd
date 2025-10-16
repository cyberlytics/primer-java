@echo off

cd /D "%~dp0"

echo classDir: %CD%\bin
cd bin

echo Start rmiregistry... (Keep Window open, do not close)
cmd /D/C rmiregistry

pause