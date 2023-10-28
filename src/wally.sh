#!/bin/sh
./sna2skool.py -h -H -c wally.ctl wally.z80 > wally.skool
./skool2html.py -H -d ~/www wally.skool
