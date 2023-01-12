from node:alpine3.16

USER node

WORKDIR /var/www/html/app/

COPY --chown=node:node app/package*.json .

RUN npm install
