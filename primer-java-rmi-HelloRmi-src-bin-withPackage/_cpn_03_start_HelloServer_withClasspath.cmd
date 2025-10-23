@echo off

cd /D "%~dp0"

echo Current Directory: %CD%
echo Starting HelloServer... (Keep Window open, do not close)
echo java -classpath bin -Djava.rmi.server.codebase=file:bin\ org.oth.rmi.HelloServer
java -classpath bin -Djava.rmi.server.codebase=file:bin\ org.oth.rmi.HelloServer
pause