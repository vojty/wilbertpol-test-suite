#!/usr/bin/env sh
make clean
make all

 if [ $? -eq 0 ]; then
    printf " ✅ OK\n"
else
    printf " ❌ ERROR\n"
fi