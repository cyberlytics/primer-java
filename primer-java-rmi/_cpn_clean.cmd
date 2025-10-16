@echo off

cd /D "%~dp0"

rmdir /S /Q bin 2> nul
del *.jar 2> nul
del _cpn_01_compile.lst 2> nul
