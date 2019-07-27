FROM golang:1.12.7-stretch
MAINTAINER hinastory

WORKDIR /testsvr
COPY testsvr /testsvr
COPY start.sh /start.sh

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64
RUN go build

RUN go get -x github.com/fullstorydev/grpcui
RUN go install -x github.com/fullstorydev/grpcui/cmd/grpcui

EXPOSE 8080

ENTRYPOINT [ "/start.sh" ]