#!/bin/bash


LPAR=$1

GSESSION=GM_${LPAR}

cd /scripts

#Suspende Global Mirror para la SESION: ${GSESSION}
source test.sh; testlock ${GSESSION}

resp=$?

echo $resp