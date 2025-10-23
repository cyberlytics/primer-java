@echo off

cd /D "%~dp0"

echo Current Directory: %CD%
echo Starting rmiregistry... (Keep Window open, do not close)
cmd /D/C rmiregistry

pause