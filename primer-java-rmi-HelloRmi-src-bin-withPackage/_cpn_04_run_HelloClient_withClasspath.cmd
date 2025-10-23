@echo off

cd /D "%~dp0"

echo Current Directory: %CD%
echo Starting HelloClient...
echo java -classpath bin org.oth.rmi.HelloClient
java -classpath bin org.oth.rmi.HelloClient
pause