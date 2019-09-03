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
RUN pip3 install -e git+https://github.com/onnx/onnx-tensorflow.git#egg=onnx-tf

WORKDIR /home

EXPOSE 8888

CMD ["jupyter", "notebook", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--no-browser"]
