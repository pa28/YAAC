#!/bin/bash

echo "Fetching YAAC.zip from https://www.ka2ddo.org/ka2ddo/YAAC.zip"

mkdir -p resources/YAAC

cat << END > YAAC.sh
#!/bin/bash
/usr/bin/java -jar /usr/local/share/YAAC/YAAC.jar
END

if [ -f resources/YAAC.zip ]; then
  rm resources/YAAC.zip
  rm -rf resources/YAAC/*
fi

cd resources && wget --quiet https://www.ka2ddo.org/ka2ddo/YAAC.zip && cd YAAC && unzip ../YAAC.zip > /dev/null
