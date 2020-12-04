# base image
FROM openjdk:8

EXPOSE 9092
ENV KAFKA_VERSION 2.6.0
ENV KAFKA_ADVERTISED_LISTENERS PLAINTEXT://kafka-broker:9092
ENV KAFKA /opt/kafka_2.12-${KAFKA_VERSION}
# download and install spark
RUN mkdir -p /opt && \
    cd /opt && \
    curl http://ftp.unicamp.br/pub/apache/kafka/${KAFKA_VERSION}/kafka_2.12-${KAFKA_VERSION}.tgz | \
	tar -zx
ENV PATH $PATH:/opt/kafka/bin
COPY server.properties /
COPY startup.sh /
RUN chmod +x /startup.sh
ENTRYPOINT exec ./startup.sh
