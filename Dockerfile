# An image for doing exploratory work

FROM ubuntu
RUN apt-get update

RUN apt-get install -y apt-utils

# ping is either:
# inetutils-ping 2:1.9.4-1build1
#  gnu
# iputils-ping 3:20121221-5ubuntu2
#  hosted on github
# trying the github one in a bet on modernity
RUN apt-get install -y iputils-ping

RUN apt-get install -y iproute2
RUN apt-get install -y curl
RUN apt-get install -y netcat

RUN apt-get install -y vim

# reorder below here sometime

RUN apt-get install -y socat
RUN apt-get install -y man
RUN apt-get install -y less

CMD /bin/bash
