FROM ubuntu:14.04
RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y nmap \
  && apt-get install -y python3 \
  && apt-get install -y python3-requests \
  && apt-get install -y python3-dev \
  && apt-get install -y python3-ws4py \
  && apt-get install -y python3-setuptools \
  && apt-get install -y python3-pip \
  && apt-get install -y build-essential \
  && apt-get install -y unzip \
  && apt-get install -y curl \
  && rm -rf /var/lib/apt/lists/*

ADD /Users/charliehendricks/PycharmProjects/diyHue /diyHue

RUN pip3 install -r /diyHue/requirements.txt

#RUN pip3 install virtualenv && virtualenv env && source env/bin/activate &&