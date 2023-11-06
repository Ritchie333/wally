#!/bin/zsh

#sna2skool.py -H -c src/wally.ctl sources/wally.z80 > sources/wally.skool
rm -rf wally
skool2html.py -H -T dark -W src/:wally.WallyHtmlWriter src/wally.skool


