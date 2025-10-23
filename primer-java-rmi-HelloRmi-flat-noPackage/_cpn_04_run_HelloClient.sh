#!/bin/sh 

cd "$(dirname $(readlink -f $0))"

java HelloClient

