#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

JAVA_TOOL_OPTIONS=

java -version

echo "======== Build ========"
rm "$(dirname $0)/$(basename $0 .sh).lst" 2> /dev/null
find $(dirname $0) -type f -name '*.java' > "$(dirname $0)/$(basename $0 .sh).lst"
type "$(dirname $0)/$(basename $0 .sh).lst"

echo "== Compile =="
javac -d . @"$(dirname $0)/$(basename $0 .sh).lst"

echo "== Result =="
find $(dirname $0) -type f -name '*.class'

