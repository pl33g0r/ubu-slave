FROM ubuntu:14.04
MAINTAINER Igor Platitsa "pl33g0r@gmail.com"

RUN apt-get update
RUN apt-get clean
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN mkdir /home/jenkins
CMD [""]
