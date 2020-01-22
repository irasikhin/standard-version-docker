FROM node:lts-alpine

RUN npm i -g standard-version && \
    apk update && \
    apk upgrade && \
    apk add --no-cache git openssh

WORKDIR /app

ENTRYPOINT ["standard-version"]