FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y 

RUN cd /
RUN pip3 install -U pip
RUN mkdir /loader
WORKDIR /loader 
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
