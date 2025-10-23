@echo off

cd /D "%~dp0"

echo Current Directory: %CD%
echo Starting HelloClient...
echo java -classpath bin HelloClient
java -classpath bin HelloClient
pause