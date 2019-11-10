FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -y sudo \
	build-essential curl \
	libcurl4-openssl-dev \
	libssl-dev wget \
	python3.6 python3-pip \
	python3-dev git
RUN pip3 install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY axon-0.1.0-py2.py3-none-any.whl axon-0.1.0-py2.py3-none-any.whl
RUN pip3 install axon-0.1.0-py2.py3-none-any.whl

WORKDIR /home

COPY tensorflow tensorflow

ENTRYPOINT ["python3.6"]
