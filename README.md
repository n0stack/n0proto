# proto

Proto repository provides protobuf definitions for grpc services.

## build

```
$ docker build -t n0stack/build-proto .
$ docker run -it --rm -v $PWD:/src:rw -v $PWD/test:/dst n0stack/build-proto --go_out=plugins=grpc:/dst
```
