FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y locales mongodb-clients && \ 
    rm -rf /var/lib/apt/lists/* && \
    localedef -i fi_FI -c -f UTF-8 -A /usr/share/locale/locale.alias fi_FI.UTF-8 && \
    apt upgrade -y && \
    useradd -m worker
ENV LANG fi_FI.utf8

USER worker
WORKDIR /home/worker/
