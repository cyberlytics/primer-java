@echo off

cd /D "%~dp0"

set JAVA_TOOL_OPTIONS=
mkdir bin 2> nul

echo == Compile ==
javac.exe -cp bin -d bin src\Hello.java
javac.exe -cp bin -d bin src\HelloServer.java
javac.exe -cp bin -d bin src\HelloClient.java

pause