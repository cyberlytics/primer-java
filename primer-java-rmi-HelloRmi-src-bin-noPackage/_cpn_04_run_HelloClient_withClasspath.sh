#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

echo "Current Directory: `pwd`"
echo "Starting HelloClient..."
echo "java -classpath bin HelloClient"
java -classpath bin HelloClient
