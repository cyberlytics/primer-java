@echo off

cd /D "%~dp0"

echo Current Directory: %CD%
echo Starting HelloServer... (Keep Window open, do not close)
java -classpath . -Djava.rmi.server.codebase=file:%CD%\HelloServer HelloServer

pause