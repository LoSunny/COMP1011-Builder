#!/bin/bash
set -e

cd app

if [[ -z "$1" ]]; then
    # No argument
    exec /bin/bash
fi

echo "Compiling c++ code"
echo "x86_64-w64-mingw32-g++ $@ -o test"
x86_64-w64-mingw32-g++ "$@" -o test

echo "Executing c++ code"
WINEPATH=/usr/lib/gcc/x86_64-w64-mingw32/10-win32 wineconsole test.exe

exec rm test.exe
