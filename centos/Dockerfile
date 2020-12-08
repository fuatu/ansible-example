FROM centos:8
RUN yum update -y
RUN yum install openssh-server openssh-clients -y
RUN yum install vim net-tools -y
RUN yum install sudo -y
RUN yum install python3.8 -y
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ''
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ''
RUN adduser ansible
RUN echo "ansible:qwer1234"|chpasswd
RUN rm /run/nologin
RUN echo %ansible ALL=NOPASSWD:ALL > /etc/sudoers.d/ansible
RUN chmod 0440 /etc/sudoers.d/ansible
RUN usermod -aG wheel ansible 
