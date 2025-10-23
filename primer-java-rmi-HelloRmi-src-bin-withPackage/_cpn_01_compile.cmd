@echo off

cd /D "%~dp0"

set JAVA_TOOL_OPTIONS=
mkdir bin 2> nul

echo == Compile ==
javac.exe -cp bin -d bin src\org\oth\rmi\Hello.java
javac.exe -cp bin -d bin src\org\oth\rmi\HelloServer.java
javac.exe -cp bin -d bin src\org\oth\rmi\HelloClient.java

pause