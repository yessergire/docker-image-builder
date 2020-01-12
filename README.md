# Docker image builder

Building images inside of a container.

This project runs a docker container which downloads a repository from github, builds a Dockerfile
located in the root and then publishes it into Docker Hub.


## How to use:

### Clone project:
```
git clone https://github.com/yessergire/docker-image-builder.git
```

### Build the image:
```
docker build --tag docker-image-builder .
```


### Run with
```
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd)/Dockerfile:/Dockerfile docker-image
```
