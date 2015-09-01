FROM ubuntu:14.04
MAINTAINER Nick w19900227@gmail.com

RUN mkdir -p /home/golang
COPY go*.tar.gz /home/golang/
COPY main.go /home/golang/
RUN tar zxvf /home/golang/go*.tar.gz -C /usr/local

ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH /home/golang

WORKDIR /home/golang
RUN go run main.go
