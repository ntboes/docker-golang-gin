## Docker Image for Golang development with Gin
========
This docker image takes advantage of [Gin](https://github.com/codegangsta/gin) in order to allow running a Go Application in a Docker container with live reloading.
The image is based on the official golang:wheezy image.

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
```

For further info see: [Gin](https://github.com/codegangsta/gin) or `gin -h`.
