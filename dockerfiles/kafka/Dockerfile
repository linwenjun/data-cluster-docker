FROM openjdk:8-jdk

RUN apt-get update \
    && apt-get install -y openssh-server vim

ADD ./kafka_2.11-2.0.0.tgz soft/
ADD ./server.properties /root/files/server.properties

WORKDIR /soft/kafka_2.11-2.0.0

ADD ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]