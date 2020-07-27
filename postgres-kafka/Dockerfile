FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y vim
RUN apt-get install -y default-jre
RUN mkdir /opt/kafka
RUN cd /opt/kafka
RUN wget http://mirror.nbtelecom.com.br/apache/kafka/2.5.0/kafka_2.12-2.5.0.tgz
RUN tar xzvf kafka_2.12-2.5.0.tgz
RUN mv kafka_2.12-2.5.0 kafka
RUN rm -f kafka_2.12-2.5.0.tgz

CMD tail -f /dev/null