#!/bin/sh

nohup $KAFKA/bin/zookeeper-server-start.sh $KAFKA/config/zookeeper.properties > zookeeper_output.log &
sleep 5
nohup $KAFKA/bin/kafka-server-start.sh $KAFKA/config/server.properties > kafka_output.log &
sleep 5

while :
do
	echo "Press [CTRL+C] to stop.."
	sleep 10
done
