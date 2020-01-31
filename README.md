# gRPC UI Playground

Playground for https://github.com/fullstorydev/grpcui

run [grpcui testsvr](https://github.com/fullstorydev/grpcui/tree/master/testing/cmd/testsvr) and run grpcui.

## how to build

```sh
git clone git@github.com:hinastory/grpcui-playground.git
cd grpcui-playground
docker build --rm -t hinastory/grpcui-playground .
```

## running

```sh
docker run --rm -p 8080:8080 hinastory/grpcui-playground:v0.1.4
```
