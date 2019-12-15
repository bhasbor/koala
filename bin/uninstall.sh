#!/bin/sh

DIR=$HOME/.koala
KOALA=$DIR/bin/koala.sh
BIN=/usr/local/bin/koala

cat ./src/info.txt

echo "[*] Koala Toolkit Uninstaller"

echo "[*] Remove containers and image"
docker container kill alexfgrdo/koala
docker container rm alexfgrdo/koala
docker image rm alexfgrdo/koala
docker image rm kalilinux/kali-rolling

echo "[*] Remove all scripts and directories"
rm -rf $BIN
rm -rf $DIR
