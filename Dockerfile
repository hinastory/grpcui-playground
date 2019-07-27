FROM golang:1.12.7-alpine as build-env
MAINTAINER hinastory

WORKDIR /testsvr
COPY testsvr /testsvr
COPY start.sh /start.sh

RUN apk update && apk add --no-cache git

RUN go build

RUN go get -x github.com/fullstorydev/grpcui
RUN go install -x github.com/fullstorydev/grpcui/cmd/grpcui

FROM alpine
WORKDIR /
COPY --from=build-env /testsvr/testsvr /bin/testsvr
COPY --from=build-env /go/bin/grpcui /bin/grpcui
COPY start.sh /start.sh

EXPOSE 8080

ENTRYPOINT [ "/start.sh" ]