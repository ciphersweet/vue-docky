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


## Vue App
Vue App is the the docker-compose service that serves the application via an HTTP server running on the port 8000. The served application is located on the `/app` folder, the current Docker container working directory.

Note that copying `package.json` and `package-lock.json` into the `/app` folder allows us to take advantage of the cached Docker layers.

### Create a new Vue.js application
Already done during the built-in process 😎.

You should be able to access your Vue.js application on `localhost:8000`
