from node:alpine3.16

WORKDIR /var/www/html/app/

COPY app/package*.json ./

RUN npm install

USER node

