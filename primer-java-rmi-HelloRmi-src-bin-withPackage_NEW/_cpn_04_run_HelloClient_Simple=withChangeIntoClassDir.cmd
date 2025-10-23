@echo off

cd /D "%~dp0"

echo classDir: %CD%\bin
cd bin

echo Start HelloClient...
java de.oth.java.rmi.HelloClient

pause