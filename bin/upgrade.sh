#!/bin/sh

DIR=$HOME/.koala
KOALA=$DIR/bin/koala.sh
BIN=/usr/local/bin/koala

cat ./src/info.txt

echo "[*] Koala Toolkit Upgrade"

echo "[*] Uninstall current version"
docker container kill alexfgrdo/koala
docker container rm alexfgrdo/koala
docker image rm alexfgrdo/koala
docker image rm kalilinux/kali-rolling

rm -rf $BIN
rm -rf $DIR

echo "[*] Git clone alexfgrdo/koala"
git clone https://github.com/alexfgrdo/koala.git $DIR

echo "[*] Install scripts in /usr/local/bin"
chmod +x $KOALA && ln -sf $KOALA $BIN
