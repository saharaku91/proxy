FROM node:8.6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN npm install
COPY lib /usr/src/app/
COPY config.json /usr/src/app/
COPY server.js /usr/src/app/

CMD [ "node", "server" ]
