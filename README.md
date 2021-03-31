# Vue Docky
Vue Docky is a simple, efficient and ready to use Vue.js development environment using Docker. 

The whole structure of the project directory is as follow:

```
Vue Docky
    │   
    └─── app  -> Your Vue.js application folder 
    │     │   package.json         
    │     │   package-lock.json    
    │     │   src
    │     └───...
    └─── Dockerfile
    └─── docker-compose.yml
    └─── README.md
```

To build the Docker images and start the services: 
```
$ docker-compose up -d --build
```

Vue Docky has three main services:

## Vue App
Vue App is the the docker-compose service that serves the application via an HTTP server running on the port 8080. The served application is located on the `/app` folder, the current Docker container working directory.

Note that copying `package.json` and `package-lock.json` into the `/app` folder allows us to take advantage of the cached Docker layers.

### Create a new Vue.js application
Once the images build and the services started, you can create your Vue.js application using this command:
```
$ docker-compose run --rm vue-cli create ./
```

You should be able to access your Vue.js application on `localhost:8080`

## Vue Npm
Vue Npm is the docker-compose service that provides npm capabilities via a simple command:
```
$ docker-compose run --rm vue-npm <npm command>
```

## Vue Cli
Vue Cli is the standard tooling for Vue.js development providing interactive project scaffolding, rapid prototyping, and other capabilities.

```
$ docker-compose run --rm vue-cli <vue command>
```

### Vue Cli UI
You can serve and access the Vue Cli UI via Docker using this command:
```
$ docker-compose run --rm -p 8000:8000 vue-cli ui --headless --port 8000 --host 0.0.0.0
```
Note that the ports must be exposed and binded so the service Vue UI can be reachable from `localhost:8000`.
