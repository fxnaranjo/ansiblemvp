#!/bin/bash


if [ "$2" = "primary" ]; then
    echo "Server-9080-M9S-SN21A6E77-PROD2"$1
else
   echo "Server-9080-M9S-SN21B8B27-CONT2"$1
fi

