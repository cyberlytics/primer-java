#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

JAVA_TOOL_OPTIONS=

echo "======== Build ========"

echo "== Compile =="
javac *.java
