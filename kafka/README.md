# Creating a network bridge for communication:
``sudo docker network create kafka-net``
# Starting Kafka in the background
``docker run  -d --name my_kafka --network kafka-net my_kafka:latest``
# Creating a topic test
``docker run --rm --network kafka-net my_kafka:latest kafka-topics.sh --create --topic test --replication-factor 1 --partitions 1 --zookeeper localhost:2181``
# Writing messagens to topic test
``docker run --rm --interactive --network kafka-net my_kafka:latest /opt/kafka_2.12-2.6.0/bin/kafka-console-producer.sh --topic test --broker-list my_kafka:9092``
# Reading messages from topic test
``docker run --rm --network kafka-net my_kafka:latest /opt/kafka_2.12-2.6.0/bin/kafka-console-consumer.sh --topic test --from-beginning --bootstrap-server my_kafka:9092``