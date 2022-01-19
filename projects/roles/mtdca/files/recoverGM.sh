#!/bin/bash


LPAR=$1

GSESSION=GM_${LPAR}

cd /scripts

#Recover Global Mirror para la SESION: ${GSESSION}
source test2.sh; testlock ${GSESSION}

resp=$?

echo $resp