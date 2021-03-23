#!/bin/bash

find . -maxdepth 1 -type d -name '[a-z]*' -exec bash -c "cd {} && dpkg-scanpackages --multiversion . > Packages && gzip -k -f Packages && apt-ftparchive release . > Release" \;

