<p align="center"><img src="https://user-images.githubusercontent.com/1092882/86526373-07f1d700-beb1-11ea-815b-934d2ea67e0a.png" alt="docker gopher" width="256px"/></p>

# GoLang_Docker

[Dockerfiles](https://docs.docker.com/engine/reference/builder/) to build [Docker images](https://docs.docker.com/engine/docker-overview/#docker-objects) for your [Go](https://golang.org) app. It makes use of Docker's [multi-stage build feature](https://docs.docker.com/develop/develop-images/multistage-build/) to create the Go application binary, and then attach it to a minimal base image. The Go version used is `1.18`, though it should work for most Go versions (not tested). You'll have to tweak the Dockerfile to `COPY` any static files required by the application, to be copied to the final image.

There are 3 Dockerfiles provided

1. [Alpine](https://alpinelinux.org/) based

It's important that you understand [Go build flags](https://pkg.go.dev/cmd/go#hdr-Compile_packages_and_dependencies) to build a functioning binary for your application. Not all apps will work with build configuration provided in the Dockerfiles.

## How to build the example

```bash
$ docker image build -t app-go:1.0 .

```

## How to run?

```bash
$ docker container run -it app-go:1.0
```

## The gopher

The gopher used here was created using [Gopherize.me](https://gopherize.me/). The expert Docker gopher tells us how to build production ready, secure, Docker images for Go applications! 
