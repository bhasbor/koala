#!/bin/sh

DIR=$HOME/.koala
KOALA=$DIR/bin/koala.sh
BIN=/usr/local/bin/koala

cat ./src/info.txt

echo "[*] Koala Toolkit Uninstaller"

rm -rf $BIN
rm -rf $DIR
