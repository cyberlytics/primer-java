#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

echo "Current Directory: `pwd`"
echo "Starting HelloServer... (Keep Window open, do not close)"
java -classpath . -Djava.rmi.server.codebase=file:`pwd`\HelloServer HelloServer

