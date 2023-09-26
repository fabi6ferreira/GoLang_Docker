FROM golang AS build

WORKDIR /app
ADD . /app
RUN go build app_go.go

FROM alpine
WORKDIR /app
COPY --from=build /app/app_go /app

ENTRYPOINT ./app_go
