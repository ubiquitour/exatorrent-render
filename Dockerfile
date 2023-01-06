FROM ubuntu:20.04
RUN apt-get update && apt install -y wget curl zip p7zip-full detox unzip tmux file
RUN wget https://github.com/varbhat/exatorrent/releases/download/v0.1.1/exatorrent-linux-amd64 -O /usr/local/bin/exatorrent
RUN chmod +x /usr/local/bin/exatorrent
WORKDIR /root
ENV USERNAME=adminuser
ENV EXAPASSWORD=adminpassword
CMD exatorrent -admin $USERNAME -passw -addr :5000
