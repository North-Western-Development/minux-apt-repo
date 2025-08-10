#!/bin/sh -e
set -e
cd "${0%/*}"
dpkg-scanpackages -m ./debs > Packages 2> /dev/null
gzip -fkn Packages
bzip2 -fk Packages
printf 'Done!\n'
