FROM openjdk:8-jdk

RUN apt-get update \
    && apt-get install -y openssh-server vim

ADD ./zookeeper-3.4.10.tar.gz soft/

WORKDIR /soft/zookeeper-3.4.10

ADD ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]