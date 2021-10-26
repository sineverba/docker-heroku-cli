FROM node:16.12.0-alpine3.14

RUN apk update && apk upgrade

ENV NPM_VERSION 8.1.1
ENV HEROKU_VERSION 7.59.1

RUN npm install -g npm@${NPM_VERSION}
RUN npm install -g heroku@${HEROKU_VERSION}