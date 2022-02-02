#!/bin/bash

LPAR=$1

USRHMC=$2

HMCIP=$3

ACTION_SYS=$4

echo "Encender LPAR: ${LPAR} con ${USRHMC}@${HMCIP} en ${ACTION_SYS}"
#ssh ${USRHMC}@${HMCIP} "chsysstate -r lpar -o on -m ${ACTION_SYS} -n ${LPAR} -f Normal"
#ssh ${USRHMC}@${HMCIP} "lssyscfg -r lpar -m ${ACTION_SYS} --filter lpar_names=${LPAR} -F name,state"