#!/bin/sh

nohup $KAFKA/bin/zookeeper-server-start.sh $KAFKA/config/zookeeper.properties > zookeeper_output.log &
sleep 5
$KAFKA/bin/kafka-server-start.sh $KAFKA/config/server.properties