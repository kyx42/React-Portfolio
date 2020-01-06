# Node container:
FROM node:10.10

ADD ./package* /opt/app/

WORKDIR /opt/app

RUN npm install
RUN npm audit fix

ENV HOME_DIR=/opt/app \
    PORT=8001

EXPOSE 8001
