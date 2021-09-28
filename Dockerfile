FROM node:16.10.0-alpine3.14

RUN apk update && apk upgrade

ENV HEROKU_CLI_VERSION 7.59.0

RUN npm install -g heroku@${HEROKU_CLI_VERSION}