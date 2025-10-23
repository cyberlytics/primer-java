@echo off

cd /D "%~dp0"

set JAVA_TOOL_OPTIONS=

echo ======== Build ========

echo == Compile ==
javac.exe *.java
pause