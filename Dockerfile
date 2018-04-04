FROM ubuntu:16.04

# 准备大环境
RUN apt-get update \
  && apt-get install -y software-properties-common dialog apt-utils \
  && add-apt-repository -y ppa:jonathonf/python-3.6 \
  && apt-get update \
  && apt-get update --fix-missing \
  && apt-get -y upgrade

# 安装 python2 和 python3
RUN apt-get install -qy python \
  && apt-get install -qy python-pip \
  && pip install --upgrade pip \
  && pip install supervisor \
  && apt-get install -qy python3.6 \
  && apt-get install -qy python3.6-dev \
  && apt-get install -qy python3-pip \
  && python3.6 -m pip install --upgrade pip \
  && apt-get remove -y python3.5 \
  && apt-get autoremove -y

RUN apt-get install -qy nginx
