#!/bin/bash

gcc -m32 -g -z execstack -fno-stack-protector -no-pie -D_FORTIFY_SOURCE=0 stacksmash.c -o stacksmash && gdb --args stacksmash "$(python3 geninput.py)"
