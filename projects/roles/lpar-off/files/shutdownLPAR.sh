#!/bin/bash

LPAR=$1

USRHMC=$2

HMCIP=$3

ACTION_SYS=$4

echo "Apagar LPAR: ${LPAR} con ${USRHMC}@${HMCIP} en ${ACTION_SYS}"
#ssh ${USRHMC}@${HMCIP} "chsysstate -r lpar -m ${ACTION_SYS} -o shutdown -n ${LPAR} --immed"
#ssh ${USRHMC}@${HMCIP} "lssyscfg -r lpar -m ${ACTION_SYS} --filter lpar_names=${LPAR} -F name,state"