#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

JAVA_TOOL_OPTIONS=

java -version

echo "======== Build ========"
rm "$(dirname $0)/$(basename $0 .sh).lst" 2> /dev/null
dir /B /S src\*.java > "$(dirname $0)/$(basename $0 .sh).lst"
type "$(dirname $0)/$(basename $0 .sh).lst"

echo "== Compile =="
javac -d bin @"$(dirname $0)/$(basename $0 .sh).lst"

echo "== Result =="
dir /B /S bin\*.class

