#!/usr/bin/env bash
set -x

file=$(basename $1 .csv)
echo -e ".mode csv\n.import $1 $file" | $0\\..\\sqlite3.exe $file.sqlite3
