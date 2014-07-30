FROM ubuntu:14.04
MAINTAINER Giorgio Cerruti <giorgio.cerruti@beinnova.it>
RUN apt-get update && apt-get upgrade -y
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get install -y software-properties-common python-software-properties python g++ make vim
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

ADD ./src/start.sh /start.sh
RUN chown 755 /start.sh
RUN mkdir -p /home/app

EXPOSE 8080

CMD ["/bin/bash", "/start.sh"]
