FROM	ubuntu:18.04
LABEL 	maintainer="Mario Engelbrecht"

# This will make apt-get install without question
ARG	DEBIAN_FRONTEND=noninteractive
RUN apt-get update

RUN echo "PS1='(dpdk-c):\W# '" >> ~/.bashrc

RUN apt-get -y install iproute2 dpdk inetutils-ping netcat tcpdump scapy

RUN apt-get -y install vim make gcc libnuma-dev pkg-config liblua5.1-0-dev lua5.2 liblua5.2-dev libpcap0.8-dev libncurses5-dev libedit-dev libncursesw5-dev

COPY payload/ /tmp/payload

WORKDIR /tmp

ENTRYPOINT ["tail -f /dev/null"]


