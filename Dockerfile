FROM golang

WORKDIR /app
ADD . /app
RUN go build app_go.go
ENTRYPOINT ./app_go
