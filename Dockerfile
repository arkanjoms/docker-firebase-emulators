FROM node:16-alpine

ENV GCLOUD_PROJECT=docker-firebase-emulators

RUN apk add --no-cache openjdk11 \
    && npm i -g firebase-tools
COPY ./config/ /emulators/
WORKDIR /emulators
EXPOSE 7000 7002

CMD firebase emulators:start --project ${GCLOUD_PROJECT}
