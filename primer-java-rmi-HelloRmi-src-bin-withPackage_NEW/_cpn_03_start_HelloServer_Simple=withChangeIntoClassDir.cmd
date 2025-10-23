@echo off

cd /D "%~dp0"

echo classDir: %CD%\bin
cd bin

echo Starting HelloServer... (Keep Window open, do not close)
java -classpath . -Djava.rmi.server.codebase=file://%CD%\de.oth.java.rmi.HelloServer de.oth.java.rmi.HelloServer

pause