#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

rmdir /S /Q bin 2> /dev/null
rm *.jar 2> /dev/null
rm _cpn_01_compile.lst 2> /dev/null
