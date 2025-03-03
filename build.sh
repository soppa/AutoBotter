#!/bin/bash
set -eo pipefail

VERSION="$(head -n 1 VERSION)"

if [[ -z "$VERSION" ]]; then
  echo "Version number is missing in VERSION file"
  exit 1
fi

rm -rf build/
mkdir build/
mkdir build/ACS/

acc autobotter.acs build/ACS/autobotter.o

cp VERSION build/
cp README.txt build/
cp autobotter.acs build/
cp CVARINFO.txt build/
cp LOADACS.txt build/

echo "----------------------"
cd build/
zip -r autobotter_v$VERSION.pk3 .

echo "----------------------"
echo "Build complete! Output in build/"
