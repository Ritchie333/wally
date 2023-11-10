#!/bin/zsh

rm -rf wally.asm
skool2asm.py -H  -W src/:wally.WallyAsmWriter src/wally.skool > wally.asm