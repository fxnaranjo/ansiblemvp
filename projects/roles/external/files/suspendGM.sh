#!/bin/bash


LPAR=$1

if [ "$LPAR" = "odm02" ]; then
    echo "nook"$1
else
   echo "ok"$1
fi