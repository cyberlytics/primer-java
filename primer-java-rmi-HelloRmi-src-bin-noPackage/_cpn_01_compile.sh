#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

JAVA_TOOL_OPTIONS=
mkdir bin 2> /dev/null

echo "== Compile =="
javac -cp bin -d bin src\Hello.java
javac -cp bin -d bin src\HelloServer.java
javac -cp bin -d bin src\HelloClient.java

