FROM node:lts-alpine

# install simple http server for serving static content
RUN npm install -g http-server

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY app/package*.json ./

RUN npm install -g @vue/cli

# install project dependencies
RUN npm install

USER node

EXPOSE 8080
CMD [ "npm", "run", "serve" ]
