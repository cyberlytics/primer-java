@echo off
setlocal enableDelayedExpansion

cd /D "%~dp0"

set JAVA_TOOL_OPTIONS=

java -version

echo ======== Build ========
del "%~dpn0.lst" 2> nul
dir /B /S *.java > "%~dpn0.lst"
type "%~dpn0.lst"

echo == Compile ==
javac -d . @"%~dpn0.lst"

echo == Result ==
dir /B /S *.class

pause