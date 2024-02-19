FROM ubuntu:latest

RUN apt update && apt install -y openssh-server
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN  useradd -rm -d /home/duykhanhxx03 -s /bin/bash -g root -G sudo -u 1000 duykhanhxx03 && \
    echo 'duykhanhxx03:12345678' | chpasswd && \
    echo 'root:12345678' | chpasswd

EXPOSE 22

ENTRYPOINT service ssh start && bash
