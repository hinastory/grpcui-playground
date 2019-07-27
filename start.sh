#!/bin/sh

GRPC_PORT=12345
GRPCUI_BIND=0.0.0.0
GRPCUI_PORT=8080

/testsvr/testsvr -port $GRPC_PORT > /dev/null 2>&1 &
sleep 1
exec /go/bin/grpcui -plaintext -bind=$GRPCUI_BIND -port=$GRPCUI_PORT localhost:$GRPC_PORT