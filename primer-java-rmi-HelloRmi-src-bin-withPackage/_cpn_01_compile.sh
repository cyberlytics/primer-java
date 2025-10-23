#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

JAVA_TOOL_OPTIONS=
mkdir bin 2> /dev/null

echo "== Compile =="
javac -cp bin -d bin src\org\oth\rmi\Hello.java
javac -cp bin -d bin src\org\oth\rmi\HelloServer.java
javac -cp bin -d bin src\org\oth\rmi\HelloClient.java

