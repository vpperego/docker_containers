# base image
FROM openjdk:8

# define spark and hadoop versions
ENV HADOOP_VERSION 2.7.7
#IMPORTANT
#Namenome name: k8s-namenome, used in mapred-site.xml and core-site.xml
#TODO - executar no namenode: :
#$HADOOP_HOME/hadoop namenode -format
#$HADOOP_HOME/sbin/start-dfs.sh
RUN mkdir -p /opt && \
    cd /opt && \
    curl http://ftp.unicamp.br/pub/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz | \
        tar -zx && \
    mkdir -p /opt/hadoop/data && \
    ln -s hadoop-${HADOOP_VERSION} hadoop

ENV HADOOP_HOME /opt/hadoop-${HADOOP_VERSION}
ENV HADOOP_CONF_DIR $HADOOP_HOME/conf

ENV CLASSPATH $CLASSPATH:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
ENV PATH $PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH:$HADOOP_HOME/bin

 
COPY nn-core-site.xml /  
COPY dn-core-site.xml /
COPY hdfs-site.xml ${HADOOP_CONF_DIR}/
COPY mapred-site.xml ${HADOOP_CONF_DIR}/
COPY yarn-site.xml ${HADOOP_CONF_DIR}/
COPY slaves ${HADOOP_CONF_DIR}/
EXPOSE 22
EXPOSE 9000
EXPOSE 8020
EXPOSE 50070
