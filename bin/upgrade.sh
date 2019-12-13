#!/bin/sh

DIR=$HOME/.koala
KOALA=$DIR/bin/koala.sh
BIN=/usr/local/bin/koala

cat ./src/info.txt

echo "[*] Koala Toolkit Upgrade"

koala -uninstall

git clone https://github.com/alexfgrdo/koala.git $DIR

chmod +x $KOALA && ln -sf $KOALA $BIN
