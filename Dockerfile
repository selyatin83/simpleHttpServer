FROM golang:latest

LABEL authors="mselyatin"

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go install github.com/selyatin83/simpleHttpServer@latest
RUN cd /build && git clone https://github.com/selyatin83/simpleHttpServer.git

RUN cd /build/simpleHttpServer/main && go build

EXPOSE 8080

ENTRYPOINT [ "/build/simpleHttpServer/main/main" ]