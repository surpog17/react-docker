FROM node:latest

MAINTAINER Surafel Kifle

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY Package.json /usr/src/app

RUN npm install

ADD src /usr/src/app/src
ADD public /usr/src/app/public

RUN npm build

CMD ["npm","start"]
