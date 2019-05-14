#!/bin/bash
unset KAFKA_BROKER_PORT
echo "$(hostname -i) kafka-broker" >> /etc/hosts
kafka-server-start.sh /server.properties
