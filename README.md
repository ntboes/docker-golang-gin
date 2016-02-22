## Docker Image for Golang development with Gin
========
This docker image takes advantage of [Gin](https://github.com/codegangsta/gin) in order to allow running a Go Application in a Docker container with live reloading.
The image is based on the official golang:wheezy image.

## Usage

# Docker
Run a docker container with your app in the current folder
```shell
docker run --name some-instance-name -v $(pwd):/go/src tehsphinx/docker-golang-gin
```

# Crane
If you are using [Crane](https://github.com/michaelsauter/crane) linking the folder `app` works as follows
```yaml
containers:
    stratus_app:
        image: tehsphinx/docker-golang-gin
        run:
            volume: ["./../..:/go/src"]
            publish: ["3000:3000"]
            detach: false
```
TODO: sample correct setting of environment variable.

# Docker Compose
If you are using [Docker Compose](https://docs.docker.com/compose/) linking the folder `app` works as follows
```yaml
web:
  image: tehsphinx/docker-golang-gin
  command: gin
  ports:
   - "3000:3000"
  volumes:
   - ./../..:/go/src
  environment:
   - WORKINGDIR=/go/src/github.com/yourname/yourapp
```
The WORKDIR environment variable is useful if you want to link in all of your dependencies (e.g. link /go/src/) and not move your app to /go/src/app.
Just point WORKDIR to your app e.g. WORKDIR=/go/src/github.com/yourname/yourapp

# Arguments
All flags after the image name in the docker command are forwarded to gin, e.g to set the port of gin to 4000:
```shell
docker run --name some-instance-name -v $(pwd):/go/src tehsphinx/docker-golang-gin -p 4000
```
For further info see: [Gin](https://github.com/codegangsta/gin) or `gin -h`.
