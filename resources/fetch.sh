#!/bin/bash

echo "Fetching YAAC.zip from https://www.ka2ddo.org/ka2ddo/YAAC.zip"

mkdir -p resources/YAAC

if [ -f resources/YAAC.zip ]; then
  rm resources/YAAC.zip
  rm -rf resources/YAAC/*
fi

cd resources && wget --quiet https://www.ka2ddo.org/ka2ddo/YAAC.zip && cd YAAC && unzip ../YAAC.zip > /dev/null
