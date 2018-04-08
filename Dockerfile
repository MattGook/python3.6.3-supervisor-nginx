FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y software-properties-common dialog apt-utils
RUN add-apt-repository -y ppa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get update --fix-missing
RUN apt-get -y upgrade

RUN apt-get install -qy python
RUN apt-get install -qy python-pip
RUN pip install --upgrade pip setuptools wheel
RUN pip install supervisor
RUN apt-get install -qy python3.6
RUN apt-get install -qy python3.6-dev
RUN apt-get install -qy python3-pip
RUN python3.6 -m pip install --upgrade pip setuptools wheel
RUN apt-get remove -y python3.5
RUN apt-get autoremove -y
RUN ln -s /usr/bin/python3.6 /usr/bin/python3

RUN apt-get install -qy nginx
