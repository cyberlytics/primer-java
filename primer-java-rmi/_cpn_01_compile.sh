#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

JAVA_TOOL_OPTIONS=

java -version

echo "======== Build ========"
rm "$(dirname $0)/$(basename $0 .sh).lst" 2> /dev/null
find src -type f -name *.java > "$(dirname $0)/$(basename $0 .sh).lst"
type "$(dirname $0)/$(basename $0 .sh).lst"

echo "== Compile =="
javac -d bin @"$(dirname $0)/$(basename $0 .sh).lst"

echo "== Result =="
find bin -type f -name *.class

