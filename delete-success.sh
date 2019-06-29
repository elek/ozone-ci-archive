#!/usr/bin/env bash

for file in $(grep -r "Failures: 0, Errors: 0" -l); do
    BASENAME=$(basename $file)
    DIRNAME=$(dirname $file)
    FILENAME=${BASENAME%.*}
    rm $file
    rm $DIRNAME/TEST-$FILENAME.xml
    rm $DIRNAME/$FILENAME-output.txt

done

