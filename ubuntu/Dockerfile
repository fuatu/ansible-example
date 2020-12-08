FROM ubuntu:20.04
RUN apt update
RUN apt install ssh -y
RUN apt install iputils-ping net-tools iproute2 -y
RUN apt install vim -y
RUN apt install wget -y
RUN apt install sudo -y
RUN adduser --disabled-password --gecos "" ansible
RUN echo "ansible:qwer1234"|chpasswd
RUN echo %ansible ALL=NOPASSWD:ALL > /etc/sudoers.d/ansible
RUN chmod 0440 /etc/sudoers.d/ansible
RUN usermod -aG sudo ansible 