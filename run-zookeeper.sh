#!/usr/bin/env bash
CONFIG=`pwd`/config

SERVER=$1
TMPDIR=/tmp/zookeeper-$SERVER

mkdir -p $TMPDIR
echo $SERVER > $TMPDIR/myid
../bin/zookeeper-server-start.sh "$CONFIG/zookeeper-$SERVER.properties"