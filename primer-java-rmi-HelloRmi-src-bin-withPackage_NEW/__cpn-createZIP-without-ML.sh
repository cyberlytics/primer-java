#!/bin/sh 

cd "$(dirname $(readlink -f $0))"
for %%i in (`pwd`) do BASEDIR=%%~ni
echo "== %BASEDIR% =="

rm "%BASEDIR%.zip" > /dev/null 2>&1

echo "^> Clean..."
_cpn_clean.cmd 2> /dev/null

eolConverter lf "**/*.sh" > /dev/null 2>&1

echo "^> Zipping..."
cd ..
7z a -xr@"%BASEDIR%\%~n0.lst" "%BASEDIR%.zip" .\%BASEDIR%\*
move "%BASEDIR%.zip" .\%BASEDIR%\ > /dev/null 2>&1
cd "$(dirname $(readlink -f $0))"

