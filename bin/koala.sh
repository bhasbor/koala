#!/bin/sh

DIR="/Users/Macintosh/Documents/Machines/koala/"

# Build
if [ $1 == "-b" ]; then
  docker build --rm --no-cache -t alexfgrdo/koala $DIR/

# Edit
elif [ $1 == "-e" ]; then
  vim $DIR/Dockerfile

# Help
elif [ $1 == "-h" ]; then
  cat $DIR/src/info.txt
  cat $DIR/src/help.txt

# Kill
elif [ $1 == "-k" ]; then
  docker container kill alexfgrdo/koala

# Remove
elif [ $1 == "-r" ]; then
  docker image rm alexfgrdo/koala

# Version
elif [ $1 == "-v" ]; then
  cat $DIR/src/version.txt

else
  docker run --rm -h koala -it alexfgrdo/koala /bin/bash
fi
