#!/bin/sh

DIR=$HOME/Koala
KOALA=$DIR/tools/koala

cat ./src/info.txt

echo "[*] Koala Toolkit Installer"

git clone https://github.com/alexfgrdo/koala.git $DIR

chmod +x $KOALA

ln -sf $KOALA $HOME/Test
