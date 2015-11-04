FROM ubuntu:trusty
MAINTAINER Manfred Touron m@42.am

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq -y install openssh-server && \
    apt-get clean

RUN mkdir -p /var/run/sshd && \
    echo "root:root" | chpasswd

CMD ["/usr/sbin/sshd", "-D"]

EXPOSE 22
