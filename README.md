# proto

Proto repository provides protobuf definitions for grpc services.

## build

```sh
docker build -t n0stack/build-proto .
docker run -it --rm  -v $PWD:/src:ro -v `go env GOPATH`/src:/dst n0stack/build-proto --go_out=plugins=grpc:/dst
```
