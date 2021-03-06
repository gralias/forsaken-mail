FROM node:latest
MAINTAINER Gralias <gralias@yopmail.com>

RUN apt-get clean all
RUN apt-get update
RUN apt-get -y install git
RUN git clone --branch master https://github.com/gralias/forsaken-mail
WORKDIR /forsaken-mail

RUN npm install

EXPOSE 25
EXPOSE 3000
CMD npm start
