FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -y sudo \
	build-essential curl \
	libcurl4-openssl-dev \
	libssl-dev wget \
	python3.6 python3-pip \
	python3-dev git git-lfs \
	openjdk-11-jre
RUN rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN pip3 install https://github.com/wpilibsuite/axon-cli/releases/download/v0.1.17/axon-0.1.17-py2.py3-none-any.whl

WORKDIR /home

COPY tensorflow tensorflow
COPY vaadin vaadin

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

EXPOSE 8080
CMD vaadin/start.sh
