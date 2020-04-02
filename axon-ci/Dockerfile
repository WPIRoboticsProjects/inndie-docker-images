FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
	apt-get install -y \
	sudo \
	curl \
	build-essential \
	libcurl4-openssl-dev \
	libssl-dev \
	wget \
	apt-transport-https \
	ca-certificates \
	git \
	python3.6 \
	python3-pip \
	python3-dev

RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | tee /etc/apt/sources.list.d/coral-edgetpu.list

RUN apt-get update && \
	apt-get install -y \
	python3-opencv \
	edgetpu-compiler \
	fakeroot \
	openjdk-11-jdk-headless \
	&& rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN pip3 install https://github.com/wpilibsuite/axon-cli/releases/download/v0.1.17/axon-0.1.17-py2.py3-none-any.whl

WORKDIR /home

COPY tensorflow tensorflow

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV JAVA_HOME_11_X64=/usr/lib/jvm/java-11-openjdk-amd64
