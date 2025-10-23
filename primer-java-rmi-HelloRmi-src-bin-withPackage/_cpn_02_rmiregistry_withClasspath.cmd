@echo off

cd /D "%~dp0"

echo Current Directory: %CD%
echo Starting rmiregistry -J-Djava.class.path=./bin  (Keep Window open, do not close)
rmiregistry -J-Djava.class.path=./bin
pause