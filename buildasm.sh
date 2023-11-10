#!/bin/zsh

rm -rf wally.asm
skool2asm.py -H -S 31488 -E 64298  -W src/:wally.WallyAsmWriter src/wally.skool > wally.asm