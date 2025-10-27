#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

rm *.class 2> /dev/null
rm *.jar 2> /dev/null
