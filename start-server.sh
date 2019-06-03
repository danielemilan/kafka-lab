#!/usr/bin/env bash
CONFIG=`pwd`/config

if [ $# -eq 0 ]
  then
    echo "Usage: $0 <server #>"
    exit 1
fi

SERVER=$1

../bin/kafka-server-start.sh "$CONFIG/server-$SERVER.properties"