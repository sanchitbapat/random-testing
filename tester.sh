#!/bin/bash

s3_files_to_exclude=" "
files_to_exlude=""
if [[ "$s3_files_to_exclude" == *,* ]]
then
    IFS=','
    for i in `echo "$s3_files_to_exclude"`
    do
    files_to_exlude="$files_to_exlude --exclude \"$i\""
    done
    unset IFS
elif [[ "$s3_files_to_exclude" != "" ]]
then
    files_to_exlude="--exclude \"$s3_files_to_exclude\""
fi
echo "files_to_exlude=$files_to_exlude"
